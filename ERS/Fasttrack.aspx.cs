using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERS
{
    public partial class fasttrack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.InsertCommand = "INSERT INTO IT_fasttrack(year,month,ft_open_tix,ft_tix_created,ft_res_t_days,ft_res_t_hours) values ('" + dd_year.SelectedValue + "','" + dd_month.SelectedValue + "','" + ft_ot.Text + "','" + txt_ft_tix_created.Text + "','" + ft_art_days.Text + "','" + ft_art_hours.Text + "') ";

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
           ft_ot.Text ="";
           txt_ft_tix_created.Text="";
           ft_art_days.Text="";
           ft_art_hours.Text = "";
        
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