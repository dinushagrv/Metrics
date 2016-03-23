using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            admitions.InsertCommand = "INSERT INTO admissions(month,year,sundown,meadows,ballarat,bendigo,cranburne,geelong,healesville,horsham,sale,shepparton,traralgon,warragul,warrnambool) values ('" + ddMonth.SelectedValue + "','" + ddYear.SelectedValue + "','" + txtSundown.Text + "','" + txtMeadows.Text + "','" + txtBallarat.Text + "','" + txtBendigo.Text + "','" + txtCranbourne.Text + "','" + txtGeelong.Text + "','" + txtHealsville.Text + "','" + txtHorsham.Text + "','" + txtSale.Text + "','" + txtShepparton.Text + "','" + txtTraralgon.Text + "','" + txtWarragul.Text + "','" + txtWarranambool.Text + "' )";
            admitions.InsertCommandType = SqlDataSourceCommandType.Text;
            
            try
            {
                int a = admitions.Insert();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
                
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtSundown.Text = "";
            txtMeadows.Text = "";
            txtBallarat.Text = "";
            txtBendigo.Text = "";

        }
    }
}