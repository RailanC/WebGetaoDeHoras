using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebGetaoDeHoras
{
    public partial class Login_Aluno : System.Web.UI.Page
    {
        public WebSGestao webS = new WebSGestao();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_LoginA_Click(object sender, EventArgs e)
        {
            if(webS.Login(txt_UsernameA.Text, txt_PasswordA.Text,"Aluno"))
            {
                Response.Write("<script>alert('Successful');</script>");
            }
            else
            {
                Response.Write("<script>alert('denied');</script>");
            }
        }
    }
}