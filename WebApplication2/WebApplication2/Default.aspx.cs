using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    
    
    public partial class Default : System.Web.UI.Page
    {

        string qry;
        
        DB_Handler dbh;
        string trip, f_name, mail, s_name;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            trip = Convert.ToString(TextBox1.Text);
            f_name = Convert.ToString(TextBox3.Text);
            mail = Convert.ToString(TextBox4.Text);
            s_name = Convert.ToString(TextBox5.Text);
            Session["trip"] = TextBox1.Text;
            Session["f_name"] = TextBox3.Text;
            Session["mail"] = TextBox4.Text;
            Session["s_name"] = TextBox5.Text;
            qry = "insert into details(trip,f_name,mail,s_name) values('" + trip + "','" + f_name + "','" + mail + "','" + s_name + "')";
            dbh = new DB_Handler();

            int row = dbh.execData(qry);
            

            Response.Redirect("Expense.aspx");
        }
    }
}