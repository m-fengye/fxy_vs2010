using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace fxy_vs2010.backstage
{
    /// <summary>
    /// DelPublicInfo 的摘要说明
    /// </summary>
    public class DelPublicInfo : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            string ID = context.Request["ID"];
            if (AccessDBHelper.Update("delete from PublicInfo where ID=" + ID))
            {
                context.Response.Write("<script>alert('删除成功');window.location.href='/backstage/ManagerPublicInfo.aspx';</script>");
            }
            else
            {
                context.Response.Write("<script>alert('删除失败，请重试');window.location.href='/backstage/ManagerPublicInfo.aspx';</script>");
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