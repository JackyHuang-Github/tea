using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Security;
using tea.Models;

/// <summary>
/// 使用者相關服務
/// </summary>
public static class UserService
{
    public static string UserNo { get { return SessionService.GetValue("UserNo"); } set { SessionService.SetValue("UserNo", value); } }
    public static string UserName { get { return SessionService.GetValue("UserName"); } set { SessionService.SetValue("UserName", value); } }
    public static string RoleNo { get { return SessionService.GetValue("RoleNo"); } set { SessionService.SetValue("RoleNo", value); } }
    public static string RoleName { get { using (z_repoRoles roles = new z_repoRoles()) { return roles.GetDataName(RoleNo); } } }
    public static string DeptNo { get { return SessionService.GetValue("DeptNo"); } set { SessionService.SetValue("DeptNo", value); } }
    public static string DeptName { get { return SessionService.GetValue("DeptName"); } set { SessionService.SetValue("DeptName", value); } }
    public static string TitleNo { get { return SessionService.GetValue("TitleNo"); } set { SessionService.SetValue("TitleNo", value); } }
    public static string TitleName { get { return SessionService.GetValue("TitleName"); } set { SessionService.SetValue("TitleName", value); } }
    public static string UserImage { get { return GetUserImage(UserNo); } }
    public static bool IsLogin { get { return SessionService.GetBoolValue("IsLogin"); } set { SessionService.SetValue("IsLogin", value); } }
    public static Securitys UserSecurity
    {
        get
        {
            object obj_security = HttpContext.Current.Session["UserSecurity"];
            Securitys securitys = new Securitys()
            {
                Id = -1,
                TargetNo = "",
                RoleNo = "",
                IsAdd = false,
                IsConfirm = false,
                IsDelete = false,
                IsDownload = false,
                IsEdit = false,
                IsInvalid = false,
                IsPrint = false,
                IsUndo = false,
                IsUpload = false
            };
            if (obj_security != null) securitys = (Securitys)obj_security;
            return securitys;
        }
        set { HttpContext.Current.Session["UserSecurity"] = value; }
    }
    public static string GetUserImage(string userNo)
    {
        string str_image = string.Format("~/Images/User/{0}.jpg", userNo);
        string str_stamp = DateTime.Now.ToString("yyyyMMddHHmmssff");
        if (!File.Exists(HttpContext.Current.Server.MapPath(str_image)))
            str_image = "~/Images/User/none.jpg";
        return string.Format("{0}?t={1}", str_image, str_stamp);
    }
    /// <summary>
    /// 登入
    /// </summary>
    /// <param name="userNo">使用者代號</param>
    /// <param name="userName">使用者姓名</param>
    /// <param name="roleNo">角色代號</param>
    public static void Login(string userNo, string userName, string roleNo)
    {
        UserNo = userNo;
        UserName = userName;
        RoleNo = roleNo;
        DeptNo = "";
        DeptName = "";
        TitleNo = "";
        TitleName = "";
        IsLogin = true;
        using (z_repoUsers user = new z_repoUsers()) { user.SetUserInfo(); }
        using (z_repoCompanys user = new z_repoCompanys()) { user.SetDefaultCompany(); }
    }
    /// <summary>
    /// 登出
    /// </summary>
    public static void Logout()
    {
        UserNo = "";
        UserName = "";
        RoleNo = "";
        DeptNo = "";
        DeptName = "";
        TitleNo = "";
        TitleName = "";
        IsLogin = false;
    }
    /// <summary>
    /// 除錯模式預設使用者
    /// </summary>
    public static void DemoUser()
    {
        UserNo = "demo";
        UserName = "測試帳號";
        DeptNo = "Mis";
        DeptName = "資訊部";
        TitleNo = "Mis";
        TitleName = "程式設計師";
        IsLogin = true;
        DemoSecurity();
    }
    /// <summary>
    /// 權限初始化
    /// </summary>
    public static void InitSecurity()
    {
        UserSecurity.Id = -1;
        UserSecurity.TargetNo = "";
        UserSecurity.RoleNo = "";
        UserSecurity.IsAdd = false;
        UserSecurity.IsConfirm = false;
        UserSecurity.IsDelete = false;
        UserSecurity.IsDownload = false;
        UserSecurity.IsEdit = false;
        UserSecurity.IsInvalid = false;
        UserSecurity.IsPrint = false;
        UserSecurity.IsUndo = false;
        UserSecurity.IsUpload = false;
    }
    /// <summary>
    /// 除錯模式預設使用者權限
    /// </summary>
    public static void DemoSecurity()
    {
        UserSecurity.Id = -1;
        UserSecurity.TargetNo = UserNo;
        UserSecurity.RoleNo = RoleNo;
        UserSecurity.IsAdd = true;
        UserSecurity.IsConfirm = true;
        UserSecurity.IsDelete = true;
        UserSecurity.IsDownload = true;
        UserSecurity.IsEdit = true;
        UserSecurity.IsInvalid = true;
        UserSecurity.IsPrint = true;
        UserSecurity.IsUndo = true;
        UserSecurity.IsUpload = true;
    }
}