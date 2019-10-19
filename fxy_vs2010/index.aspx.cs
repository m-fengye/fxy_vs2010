using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace fxy_vs2010
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //加载友情链接
                DataSet ds = AccessDBHelper.Select("select LinkName,LinkAddress from FriendshipLink");
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    Control c = ParseControl(@"<li><a href='"+dr["LinkAddress"]+"' target='_blank'>"+dr["LinkName"]+"</a></li>");
                    PHyqlj.Controls.Add(c);
                }
                //加载学院新闻
                ds = AccessDBHelper.Select("select top 6 ID,Title,Time from SchoolNews order by Time desc");
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    Control c = ParseControl(@"<li><a href='/onstage/SchoolNewsContent.aspx?ID="+dr["ID"]+"' target='_blank'>"+dr["Title"]+"<p>"+dr["Time"]+"</p></a></li>");
                    PHxyxw.Controls.Add(c);
                }
                //加载党务公开
                ds = AccessDBHelper.Select("select top 5 ID,Title,Time from PartyWork order by Time desc");
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    Control c = ParseControl(@"<li><a href='/onstage/PartyWorkContent.aspx?ID=" + dr["ID"] + "' target='_blank'>" + dr["Title"] + "</a></li>");
                    PHdwgk.Controls.Add(c);
                }
                //加载公开信息
                ds = AccessDBHelper.Select("select top 5 ID,Title,Time from PublicInfo order by Time desc");
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    Control c = ParseControl(@"<li><a href='/onstage/PublicInfoContent.aspx?ID=" + dr["ID"] + "' target='_blank'>" + dr["Title"] + "</a></li>");
                    PHgkxx.Controls.Add(c);
                }
            }
        }
    }
}