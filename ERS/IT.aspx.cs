using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERS
{
    public partial class IT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlDataSource1.InsertCommand = "INSERT into it_dept(year,month,HD_open_tix,HD_created_tix,HD_first_response_t_days,HD_first_response_t_hours,FT_open_tix,FT_created_tix,FT_first_response_t_days,FT_first_response_t_hours) values('" + dd_year.SelectedValue + "','" + dd_month.SelectedValue + "','" + txt_hd_ot.Text + "','" + txt_hd_tix_created.Text + "','" + txt_hd__res_days.Text + "','" + Double.Parse(txt_hd_res_hours.Text) + "','" + txt_ft_ot.Text + "','" + txt_ft_tix_cre.Text + "','" + txt_fr_days.Text + "','" + Double.Parse(txt_fr_hr.Text) + "')";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            clearFields();

        }

        protected void clearFields() {

            txt_hd_ot.Text = "";
            txt_hd_tix_created.Text = "";
            txt_hd_res_hours.Text = "";
            txt_hd__res_days.Text = "";

            txt_ft_ot.Text = "";
            txt_ft_tix_cre.Text = "";
            txt_fr_hr.Text = "";
            txt_fr_days.Text = "";

        
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