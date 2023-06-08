using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

//Jacky 1120608

public class vmValidateEmail
{
    [Display(Name = "驗證碼")]
    public string ValidateCode { get; set; }
}