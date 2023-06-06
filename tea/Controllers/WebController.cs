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

        [HttpGet]
        public ActionResult Login()
        {
            UserService.Logout();
            vmLogin model = new vmLogin();
            return View(model);
        }

        [HttpPost]
        public ActionResult Login(vmLogin model)
        {
            // 1. 沒有通過驗證，返回登入頁繼續輸入
            if (!ModelState.IsValid) return View(model);
            // 2. 判斷登入資料是否正確，不正確時手動引發一個錯誤
            using (z_repoUsers repos = new z_repoUsers())
            {
                bool bln_value = repos.Login(model.UserNo, model.Password);
                if (!bln_value)
                {
                    ModelState.AddModelError("UserNo", "帳號或密碼輸入錯誤!!");
                    return View(model);
                }
                if (!AppService.IsConfig) AppService.Init();
                return RedirectToAction("Home", "Web", new { area = "" });
            }
        }

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
                        ModelState.AddModelError("ContactEmail", "此電子郵件已有註冊記錄!!");
                        return View(model);
                    }
                    //新增未驗證信箱的會員資料
                    string str_validate_code = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 20);
                    string str_password = crpy.SHA256Encode(model.Password);

                    // Jacky 1120606
                    //Members newData = new Members();
                    //newData.member_name = model.AccountName;
                    //newData.member_password = str_password;
                    //newData.gender_code = model.GenderCode;
                    //newData.birth_date = model.Birthday;
                    //newData.contact_email = model.ContactEmail;
                    //newData.contact_phone = model.ContactPhone;
                    //newData.contact_address = model.ContactAddress;
                    //newData.is_validate = false;
                    //newData.validate_code = str_validate_code;
                    //db.Members.Add(newData);

                    // Jacky 1120606
                    users = new Models.Users();
                    users.UserNo = model.UserNo;
                    users.UserName = model.UserName;
                    users.Password = str_password;
                    users.ContactEmail = model.ContactEmail;
                    users.IsValid = false;
                    users.ValidateCode = str_validate_code;
                    db.Users.Add(users);
                    db.SaveChanges();

                    //寄出電子信箱驗證信
                    using (SendMailService sendMail = new SendMailService())
                    {
                        sendMail.UserRegister(str_validate_code);
                    }

                    //顯示註冊完成並提示收信資訊
                    return RedirectToAction("Registered");
                }
            }
        }

        [HttpGet]
        [LoginAuthorize()]
        public ActionResult ChangePassword()
        {
            vmChangePassword model = new vmChangePassword();
            return View(model);
        }

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
                TempData["ErrorMessage"] = "密嗎已成功變更!!";
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
                    TempData["Message"] = str_message;
                else
                {
                    //記錄會員註冊驗證成功時間
                    using (z_repoLogs logs = new z_repoLogs())
                    {
                        logs.EventLogCount(enLogType.EmailSend, userData.UserNo, id);
                    }
                    TempData["Message"] = "員工電子郵件已驗證成功，您可以進入登入頁登入系統!!";
                }
                //顯示訊息畫面
                return RedirectToAction("Login", "Web", new { area = "" });
            }
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

        [AllowAnonymous]
        [HttpPost]
        public ActionResult Forget(vmForget model)
        {
            if (!ModelState.IsValid) return View(model);
            string str_validate_code = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 20).ToUpper();
            string str_user_name = "";

            //檢查電子郵件是否存在
            //using (tblAdmins admins = new tblAdmins())
            //{ bln_exists = admins.CheckEmailExists(model.AccountEmail, str_validate_code, out str_user_name); }
            //if (!bln_exists)
            //{
            //    using (tblMembers members = new tblMembers())
            //    { bln_exists = members.CheckEmailExists(model.AccountEmail, str_validate_code, out str_user_name); }
            //}
            //if (!bln_exists)
            //{
            //    using (tblUsers users = new tblUsers())
            //    { bln_exists = users.CheckEmailExists(model.AccountEmail, str_validate_code, out str_user_name); }
            //}

            //Jacky 1120606 判斷電子信箱是否存在
            using (z_repoUsers users = new z_repoUsers())
            {
                var userData = users.repo.ReadSingle(m => m.ContactEmail == model.ContactEmail);
                if (userData == null)
                {
                    ModelState.AddModelError("ContactEmail", "電子信箱不存在!!");
                    return View(model);
                }
            }

            //寄出電子信箱驗證信
            using (SendMailService sendMail = new SendMailService())
            {
                //sendMail.AccountForget(model.AccountEmail, str_validate_code, str_user_name);
                //Jacky 11206006
                //亂數產生一組8位數的密碼
                string str_password = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 8).ToUpper();
                sendMail.UserForget(model.ContactEmail, str_validate_code, str_user_name, str_password);
            }

            //提示收信資訊
            return RedirectToAction("Forgeted");
        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult Forgeted()
        {
            ViewBag.MessageText = "您的忘記密碼需求已核准，";
            ViewBag.MessageText += "請您到您的電子信箱中執行忘記密碼的驗證功能";
            ViewBag.MessageText += "，以完成密碼重設的目的!!";
            return View();
        }

        //[AllowAnonymous]
        //[HttpGet]
        //public ActionResult ValidateForgetCode(string id)
        //{
        //    ViewBag.MessageText = "";
        //    if (string.IsNullOrEmpty(id)) { ViewBag.MessageText = "驗證碼空白!!"; return View(); }
        //    string str_password = "";
        //    using (tblAdmins admins = new tblAdmins()) { str_password = admins.ForgetPasswordReset(id); }
        //    if (string.IsNullOrEmpty(str_password))
        //        using (tblMembers members = new tblMembers()) { str_password = members.ForgetPasswordReset(id); }
        //    if (string.IsNullOrEmpty(str_password))
        //        using (tblUsers users = new tblUsers()) { str_password = users.ForgetPasswordReset(id); }
        //    if (!string.IsNullOrEmpty(str_password))
        //        ViewBag.MessageText = string.Format("您的密碼已重新設定成功，新的密碼為：{0}!!", str_password);
        //    else
        //        ViewBag.MessageText = "新的密碼重設失敗，請通知管理員!!";
        //    //顯示訊息畫面
        //    return View();

        //}
    }
}