using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fxy_vs2010.backstage
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "")
            {
                Response.Write("<script>alert('请输入用户名');</script>");
                return;
            }
            if (txtPassword.Text == "")
            {
                Response.Write("<script>alert('请输入密码');</script>");
                return;
            }
            string UserName = txtUserName.Text;
            string Password = txtPassword.Text;
            if (AccessDBHelper.Update("insert into Users (UserName,[Password]) values ('" + UserName + "','" + Password + "')"))
            {
                Response.Write("<script>alert('管理员添加成功');window.location.href='/backstage/AddUser.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('管理员添加失败，请重试')</script>");
            }
        }


    }
}