using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string qry;
        DB_Handler dbh;
        string trip, f_name, s_name;
        string name1, name2;
        string  title, date1;
        int amount;
        int pay1, pay2;

        protected void Page_Load(object sender, EventArgs e)
        {
            
                Label1.Text = Session["trip"].ToString();
                trip = Session["trip"].ToString();
                name1 = Session["f_name"].ToString();
                name2 = Session["s_name"].ToString();
                DropDownList1.Items.Add(name1);
                DropDownList1.Items.Add(name2);
                RadioButton1.Checked = true;

            /*    if (RadioButton1.Checked)
                {
                    Panel1.Visible = false;
                }
                if (RadioButton2.Checked)
                {
                    Panel1.Visible = true;
                }
             */

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            amount = Convert.ToInt32(TextBox1.Text);
            title = Convert.ToString(TextBox2.Text);
            if (RadioButton1.Checked)
            {
                if (name1 == DropDownList1.SelectedItem.Text)
                {
                    pay1 = amount / 2;
                    pay2 = amount / 2;
                }

                if (name2 == DropDownList1.SelectedItem.Text)
                {
                    pay1 = amount / 2;
                    pay2 = amount / 2;
                }
            }

            qry = "insert into expense(trip,title,amount,f_name,s_name) values('" + trip + "','" + title + "','" + amount + "','" + pay1 + "','" + pay2 + "')";
            dbh = new DB_Handler();
            int row = dbh.execData(qry);
            if (row != 0)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
            }

        }

    }
}