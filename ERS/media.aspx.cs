using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERS
{
    public partial class media : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommand = "INSERT into media(month,year,grv_page_v,grv_new_users,fb_reach,fb_vid_view,fb_new_likes, tw_impressions, yt_views,yt_subscriptions, gc_page_v,gc_new_users) values('"+dd_month.SelectedValue+"','"+dd_year.Text+"','"+txt_grv_pv.Text+"','"+txt_grv_new_usr.Text+"','"+txt_fb_reach.Text+"','"+txt_fb_vid_view.Text+"','"+grv_fb_new_l.Text+"','"+txt_tw_imp.Text+"','"+txt_yt_views.Text+"','"+txt_yt_sub.Text+"','"+txt_gc_pv.Text+"','"+txt_gc_n_usr.Text+"')";
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;

            try
            {
                SqlDataSource1.Insert();
                clearFields();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void clearFields() {
            txt_grv_pv.Text = "";
            txt_grv_new_usr.Text = "";
            txt_fb_reach.Text = "";
            txt_fb_vid_view.Text = "";
            txt_gc_n_usr.Text = "";
            txt_gc_pv.Text = "";
            txt_tw_imp.Text = "";
            txt_yt_sub.Text = "";
            txt_yt_views.Text = "";
            grv_fb_new_l.Text = "";
           
        
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton del = e.Row.Cells[0].Controls[0] as LinkButton;
                del.Attributes.Add("onclick", "return confirm('Are you sure you want to delete this entry?');");
            }
        }
    }
}