using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERS
{
    public partial class MediaChannels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            gender.InsertCommand = "INSERT into gender(month,year,gm_male,gm_female,sm_male,sm_female,emp_male,emp_female) values ('"+ dd_month.SelectedValue+ "','"+dd_year.SelectedValue+"','"+txt_gm_m.Text+"','"+txt_gm_f.Text+"','"+txt_sm_m.Text+"','"+txt_sm_f.Text+"','"+txt_emp_m.Text+"','"+txt_emp_f.Text+"')";
            gender.InsertCommandType= SqlDataSourceCommandType.Text;

            try
            {
                gender.Insert();
                clearFeilds();
            }
            catch (Exception)
            {
                
                throw;
            }

        }

        private void clearFeilds() {
            txt_emp_f.Text = "";
            txt_emp_m.Text = "";
            txt_gm_f.Text = "";
            txt_gm_m.Text = "";
            txt_sm_f.Text = "";
            txt_sm_m.Text = "";
        }

        protected void clear_gender_Click(object sender, EventArgs e)
        {
            clearFeilds();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
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