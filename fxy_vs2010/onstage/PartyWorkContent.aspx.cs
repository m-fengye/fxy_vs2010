using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace fxy_vs2010.onstage
{
    public partial class PartyWorkContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ID = Request["ID"] as string;
                if (ID != null)
                {
                    DataSet ds = AccessDBHelper.Select("select * from PartyWork where ID=" + ID);
                    //更新浏览量
                    AccessDBHelper.Update("update PartyWork set LookNum=" + (Convert.ToInt32(ds.Tables[0].Rows[0]["LookNum"]) + 1) + " where ID=" + ID);

                    TitleText.InnerText = ds.Tables[0].Rows[0]["Title"] as string;
                    Control c = ParseControl(@"<h2>" + ds.Tables[0].Rows[0]["Title"] as string + "</h2><div style='background:#1661ab;height:3px;width:100%;display:inline-block;'></div>");
                    PHPartyWorkContent.Controls.Add(c);
                    c = ParseControl(@"<p class='xxxx'>发布人：" + ds.Tables[0].Rows[0]["Author"] as string + "&nbsp;&nbsp;发布时间：" + ds.Tables[0].Rows[0]["Time"] as string + "&nbsp;&nbsp;浏览次数：" + ds.Tables[0].Rows[0]["LookNum"] as string + "</p>");
                    PHPartyWorkContent.Controls.Add(c);
                    c = ParseControl(@"<div class='content'>" + ds.Tables[0].Rows[0]["Content"] as string + "</div>");
                    PHPartyWorkContent.Controls.Add(c);
                }
                else
                {
                    Response.Write("<script>alert('参数不合法');window.location.href='/index.aspx'</script>");
                }
            }
        }
    }
}