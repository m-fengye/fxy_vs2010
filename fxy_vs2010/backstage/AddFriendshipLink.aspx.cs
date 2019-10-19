using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fxy_vs2010.backstage
{
    public partial class AddFriendshipLink1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            if (txtLinkName.Text == "")
            {
                Response.Write("<script>alert('请输入链接名称');</script>");
                return;
            }
            if (txtLinkAddress.Text == "")
            {
                Response.Write("<script>alert('请输入链接地址');</script>");
                return;
            }
            string LinkName = txtLinkName.Text;
            string LinkAddress = txtLinkAddress.Text;
            if (AccessDBHelper.Update("insert into FriendshipLink (LinkName,LinkAddress) values ('" + LinkName + "','" + LinkAddress + "')"))
            {
                Response.Write("<script>alert('友情链接添加成功');window.location.href='/backstage/AddFriendshipLink.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('友情链接添加失败，请重试')</script>");
            }
        }


    }
}