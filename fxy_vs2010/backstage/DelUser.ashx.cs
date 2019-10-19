using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace fxy_vs2010.backstage
{
    /// <summary>
    /// DelUser1 的摘要说明
    /// </summary>
    public class DelUser1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            string ID = context.Request["ID"];
            if (AccessDBHelper.Update("delete from Users where ID=" + ID))
            {
                context.Response.Write("<script>alert('删除成功');window.location.href='/backstage/DelUser.aspx';</script>");
            }
            else
            {
                context.Response.Write("<script>alert('删除失败，请重试');window.location.href='/backstage/DelUser.aspx';</script>");
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