using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace fxy_vs2010.backstage
{
    /// <summary>
    /// DelFriendshipLink1 的摘要说明
    /// </summary>
    public class DelFriendshipLink1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            string ID = context.Request["ID"];
            if (AccessDBHelper.Update("delete from FriendshipLink where ID=" + ID))
            {
                context.Response.Write("<script>alert('删除成功');window.location.href='/backstage/DelFriendshipLink.aspx';</script>");
            }
            else
            {
                context.Response.Write("<script>alert('删除失败，请重试');window.location.href='/backstage/DelFriendshipLink.aspx';</script>");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}