using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace fxy_vs2010.backstage
{
    public partial class EditPartyWork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["ID"] != null)
                {
                    string ID = Request["Id"] as string;
                    DataSet ds = AccessDBHelper.Select("select * from PartyWork where ID=" + ID);
                    txtEditor.Text = ds.Tables[0].Rows[0]["Content"].ToString();
                    txtTitle.Text = ds.Tables[0].Rows[0]["Title"].ToString();
                }
            }
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            if (txtEditor.Text == "")
            {
                Response.Write("<script>alert('请输入内容')</script>");
                return;
            }
            if (txtTitle.Text == "")
            {
                Response.Write("<script>alert('请输入标题')</script>");
                return;
            }
            string Title = txtTitle.Text;
            string Content = txtEditor.Text;
            string Author = "法学院";
            string Time = DateTime.Now.ToShortDateString();
            string sql = "";
            if (Request["ID"] == null)
            {
                sql = "insert into PartyWork (Title,Content,Author,[Time]) values ('" + Title + "','" + Content + "','" + Author + "','" + Time + "')";
            }
            else
            {
                string ID = Request["ID"] as string;
                sql = "update PartyWork set Title='" + Title + "',Content='" + Content + "',Author='" + Author + "',[Time]='" + Time + "' where ID=" + ID;
            }
            if (AccessDBHelper.Update(sql))
            {
                Response.Write("<script>alert('发布成功');window.location.href='/backstage/EditPartyWork.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('发布失败')</script>");
            }
        }
    }
}