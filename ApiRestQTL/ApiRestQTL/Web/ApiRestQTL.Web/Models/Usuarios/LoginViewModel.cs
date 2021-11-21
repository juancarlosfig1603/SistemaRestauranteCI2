using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Usuarios
{
    public class LoginViewModel
    {
        [Required]
        [EmailAddress]
        public string eMail { get; set; }
        [Required]
        public string Password { get; set; }

    }
}
