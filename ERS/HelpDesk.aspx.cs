using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERS
{
    public partial class HelpDesk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.InsertCommand = "INSERT INTO IT_helpdesk(year,month,hd_open_tix,hd_tix_created,hd_res_t_days,hd_res_t_hours) values ('" + dd_year.SelectedValue + "','" + dd_month.SelectedValue + "','" + txt_hd_open_tix.Text + "','" + txt_tix_created.Text + "','" + txt_hd_avg_r_days.Text + "','" + txt_hd_art_hours.Text + "') ";

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

            txt_hd_art_hours.Text = "";
            txt_hd_avg_r_days.Text = "";
            txt_hd_open_tix.Text = "";
            txt_tix_created.Text = "";
        
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
            clearFields();
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