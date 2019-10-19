using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace fxy_vs2010
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserInfo"] == null)
                    return;
                string UserName = Request.Cookies["UserInfo"]["UserName"];
                string Password = Request.Cookies["UserInfo"]["Password"];
                Login(UserName,Password);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Value == "")
            {
                Response.Write("<script>alert('请输入用户名')</script>");
                return;
            }
            if (txtPassword.Value == "")
            {
                Response.Write("<script>alert('请输入密码')</script>");
                return;
            }
            Login(txtUserName.Value,txtPassword.Value);

        }

        protected void Login(string UserName,string Password)
        {
            DataSet ds;
            try
            {
                ds = AccessDBHelper.Select("select * from Users where UserName='"+UserName+"' and Password='"+Password+"'");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('系统错误')</script>");
                return;
            }
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Cookies["UserInfo"]["UserName"] = UserName;
                Response.Cookies["UserInfo"]["Password"] = Password;
                if (chkRememberMe.Checked == true)
                {
                    Response.Cookies["UserInfo"].Expires = DateTime.Now.AddDays(1);
                }
                Response.Redirect("backstage/index.aspx");
            }
            else
            {
                Response.Write("<script>alert('账号或密码不正确')</script>");
            }
        }

    }
}