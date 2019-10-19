using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace fxy_vs2010.onstage
{
    public partial class xyxw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //加载学院新闻
                DataSet ds = AccessDBHelper.Select("select ID,Title,Time from SchoolNews order by Time desc");
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    Control c = ParseControl(@"<li><a href='/onstage/SchoolNewsContent.aspx?ID=" + dr["ID"] + "' target='_blank'>" + dr["Title"] + "<p>" + dr["Time"] + "</p></a></li>");
                    PHxyxw.Controls.Add(c);
                }

            }
        }
    }
}