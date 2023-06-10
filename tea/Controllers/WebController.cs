using DocumentFormat.OpenXml.EMMA;
using DocumentFormat.OpenXml.Spreadsheet;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tea.Models;

namespace tea.Controllers
{
    public class WebController : Controller
    {
        [HttpGet]
        [LoginAuthorize()]
        public ActionResult Index()
        {
            UserService.Logout();
            return RedirectToAction("Login", "Web", new { area = "" });
        }

        public ActionResult Home()
        {
            string str_area = "";
            string str_controller = "Web";
            string str_action = "Login";
            if (UserService.IsLogin)
            {
                str_area = UserService.RoleNo;
                str_controller = "Home";
                str_action = "Index";
            }
            return RedirectToAction(str_action, str_controller, new { area = str_area });
        }

        /// <summary>
        /// 登入
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Login()
        {
            UserService.Logout();
            vmLogin model = new vmLogin();
            return View(model);
        }

        /// <summary>
        /// 登入
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Login(vmLogin model)
        {
            // 1. 沒有通過驗證，返回登入頁繼續輸入
            if (!ModelState.IsValid) return View(model);
            // 2. 判斷登入資料是否正確，不正確時手動引發一個錯誤
            using (z_repoUsers repos = new z_repoUsers())
            {
                /// Jacky 1120609 回傳值改為數值 (0:成功 -1:帳號或密碼錯誤 -2:帳號尚未驗證成功)
                //bool bln_value = repos.Login(model.UserNo, model.Password);
                int result = repos.Login(model.UserNo, model.Password);
                switch (result)
                {
                    case 0:             
                        // 成功
                        if (!AppService.IsConfig) AppService.Init();
                        return RedirectToAction("Home", "Web", new { area = "" });
                    case -1:
                        // 帳號或密碼錯誤
                        ModelState.AddModelError("UserNo", "帳號或密碼輸入錯誤！");
                        return View(model);
                    case -2:
                        // 帳號尚未驗證成功
                        ModelState.AddModelError("UserNo", "帳號尚未驗證成功！");
                        return View(model);
                    default:
                        ModelState.AddModelError("UserNo", "狀態碼 result 尚未定義！");
                        return View(model);
                }

                //if (!bln_value)
                //{
                //    ModelState.AddModelError("UserNo", "帳號或密碼輸入錯誤!!");
                //    return View(model);
                //}
            }
        }

        /// <summary>
        /// 登出
        /// </summary>
        /// <returns></returns>
        public ActionResult Logout()
        {
            UserService.Logout();
            return RedirectToAction("Login", "Web", new { area = "" });
        }

        /// Jacky 1120604
        /// <summary>
        /// 會員註冊
        /// </summary>
        /// <returns></returns>
        public ActionResult Register()
        {
            vmRegister model = new vmRegister();
            return View(model);
        }

        /// Jacky 1120604
        /// </summary>
        /// 會員註冊
        /// <param name="model"></param>
        /// <returns></returns>
        [AllowAnonymous]
        [HttpPost]
        public ActionResult Register(vmRegister model)
        {
            if (!ModelState.IsValid) return View(model);
            using (dbEntities db = new dbEntities())
            {
                using (CryptographyService crpy = new CryptographyService())
                {
                    //檢查電子信箱重覆註冊
                    //Jacky 1120606 檢查電子信箱重覆註冊，資料表改為 Users (原為 Members)
                    var users = db.Users
                        .Where(m => m.ContactEmail == model.ContactEmail).FirstOrDefault();
                    if (users != null)
                    {
                        ModelState.AddModelError("ContactEmail", "此電子郵件已有註冊記錄！");
                        return View(model);
                    }

                    //Jacky 1120608 檢查帳號是否重複
                    users = db.Users
                        .Where(m => m.UserNo == model.UserNo).FirstOrDefault();
                    if (users != null)
                    {
                        ModelState.AddModelError("UserNo", "此帳號已存在！");
                        return View(model);
                    }

                    //新增未驗證信箱的會員資料
                    string str_ValidateCode = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 20);

                    //Jacky 1120607 增加判斷是否為加密模式
                    string str_password = model.Password;
                    if (AppService.EncryptionMode)
                    {
                        str_password = crpy.SHA256Encode(str_password);
                    }

                    // Jacky 1120606
                    users = new Models.Users();
                    users.UserNo = model.UserNo;
                    users.UserName = model.UserName;
                    users.Password = str_password;
                    users.ContactEmail = model.ContactEmail;
                    users.IsValid = false;
                    users.ValidateCode = str_ValidateCode;
                    db.Users.Add(users);
                    db.SaveChanges();

                    //Jacky 1120607
                    string errorMessage = "";
                    //寄出電子信箱驗證信
                    using (SendMailService sendMail = new SendMailService())
                    {
                        errorMessage = sendMail.UserRegister(str_ValidateCode);
                        if (errorMessage == "")
                        {
                            //顯示註冊完成並提示收信資訊
                            return RedirectToAction("Registered");
                        }
                        else
                        {
                            ModelState.AddModelError("ContactEmail", errorMessage);
                            return View(model);
                        }
                    }
                }
            }
        }

        /// <summary>
        /// 顯示會員註冊結果
        /// </summary>
        /// <returns></returns>
        [AllowAnonymous]
        [HttpGet]
        public ActionResult Registered()
        {
            ViewBag.MessageText = "親愛的會員您好，您的註冊已完成，";
            ViewBag.MessageText += "請您記得到您的電子信箱中執行電子信箱的驗證功能，";
            ViewBag.MessageText += "以完成正式會員的資格!!";
            return View();
        }

        /// <summary>
        /// 變更密碼
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [LoginAuthorize()]
        public ActionResult ChangePassword()
        {
            vmChangePassword model = new vmChangePassword();
            return View(model);
        }

        /// <summary>
        /// 變更密碼
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [LoginAuthorize()]
        public ActionResult ChangePassword(vmChangePassword model)
        {
            if (!ModelState.IsValid) return View(model);
            using (z_repoUsers repos = new z_repoUsers())
            {
                bool bln_value = repos.ChangePassword(model.OldPassword, model.NewPassword);
                if (!bln_value)
                {
                    ModelState.AddModelError("OldPassword", "密碼輸入錯誤!!");
                    return View(model);
                }
                TempData["ErrorMessage"] = "密碼已成功變更!!";
                return RedirectToAction("Index", "Home", new { area = UserService.RoleNo });
            }
        }

        /// <summary>
        /// 使用者註冊電子信箱驗證
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [AllowAnonymous]
        public ActionResult ValidateEmail(string id)
        {
            using (z_repoUsers users = new z_repoUsers())
            {
                var userData = users.repo.ReadSingle(m => m.ValidateCode == id);

                string str_message = "";
                if (!users.ValidateEmail(id, ref str_message))
                    TempData["MessageText"] = str_message;
                else
                {
                    //記錄會員註冊驗證成功時間
                    using (z_repoLogs logs = new z_repoLogs())
                    {
                        // Jacky 1120610 改為 enLogType.EmailValidate (原為 enLogType.EmailSend)
                        logs.EventLogCount(enLogType.EmailSend, userData.UserNo, id);
                    }
                    TempData["MessageText"] = "會員電子郵件已驗證成功，您可以進入登入頁登入系統!!";
                }
             
                // Jacky 1120608
                // 顯示訊息畫面
                return RedirectToAction("ValidateEmailResult", "Web", new { area = "" });
            }
        }

        /// <summary>
        /// 顯示使用者註冊電子信箱驗證結果
        /// </summary>
        /// <returns></returns>
        public ActionResult ValidateEmailResult()
        {
            ViewBag.MessageText = TempData["MessageText"].ToString();
            return View();
        }

        /// <summary>
        /// 忘記密碼
        /// </summary>
        /// <returns></returns>
        [AllowAnonymous]
        [HttpGet]
        public ActionResult Forget()
        {
            vmForget model = new vmForget();
            return View(model);
        }

        // Jacky 1120610 改寫
        [AllowAnonymous]
        [HttpPost]
        public ActionResult Forget(vmForget model)
        {
            if (!ModelState.IsValid) return View(model);

            using (z_repoUsers users = new z_repoUsers())
            {
                // 判斷電子信箱是否存在
                var userData = users.repo.ReadSingle(m => m.ContactEmail == model.ContactEmail);
                if (userData == null)
                {
                    ModelState.AddModelError("ContactEmail", "電子信箱不存在!!");
                    return View(model);
                }
                else
                {
                    using (SendMailService sendMail = new SendMailService())
                    {
                        // 產生驗證碼
                        string str_ValidateCode = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 20).ToUpper();
                        // 亂數產生一組8位數的新密碼
                        string str_new_password = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 8).ToUpper();
                        string str_user_name = userData.UserName;

                        // 寄出電子信箱驗證信
                        sendMail.UserForget(model.ContactEmail, str_ValidateCode, str_user_name, str_new_password);
                    }
                }
            }

            //提示收信資訊
            return RedirectToAction("Forgeted");
        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult Forgeted()
        {
            ViewBag.MessageText = "您的忘記密碼需求已核准，";
            ViewBag.MessageText += "請您到您的電子信箱中執行忘記密碼重寄的驗證功能，";
            ViewBag.MessageText += "以完成密碼重設的目的!!";
            return View();
        }

        // Jacky 1120610 增加
        /// <summary>
        /// 使用者忘記密碼驗證
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [AllowAnonymous]
        [HttpGet]
        public ActionResult ValidateForget(string id)
        {
            using (z_repoUsers users = new z_repoUsers())
            {
                var userData = users.repo.ReadSingle(m => m.ValidateCode == id);

                string str_message = "";
                if (!users.ValidateForget(id, ref str_message))
                    TempData["MessageText"] = str_message;
                else
                {
                    // 記錄忘記密碼驗證成功時間
                    using (z_repoLogs logs = new z_repoLogs())
                    {
                        logs.EventLogCount(enLogType.ForgetValidate, userData.UserNo, id);
                    }
                    TempData["MessageText"] = "會員密碼重寄已驗證成功，您可以進入登入頁登入系統!!";
                }

                // 顯示訊息畫面
                return RedirectToAction("ValidateForgetResult", "Web", new { area = "" });
            }
        }

        /// <summary>
        /// 顯示使用者忘記密碼驗證結果
        /// </summary>
        /// <returns></returns>
        public ActionResult ValidateForgetResult()
        {
            ViewBag.MessageText = TempData["MessageText"].ToString();
            return View();
        }
    }
}