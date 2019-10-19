using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace fxy_vs2010.backstage
{
    public partial class ManagerPartyWork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = getDataView();
                GridView1.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = getDataView();//调用绑定的具体方法
            GridView1.DataBind();
        }

        public DataView getDataView()
        {
            return AccessDBHelper.Select("select * from PartyWork order by Time desc").Tables[0].DefaultView;
        }
    }
}