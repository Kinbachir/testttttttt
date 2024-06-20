using System;
using System.Collections.Generic;
using System.Web.Services;

namespace QualiOne
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod(EnableSession = true)]
        public static string redirection()
        {
            return "WebForm.aspx";
        }
    }
}