using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Overview : System.Web.UI.Page
    {

        string qry;
        DB_Handler dbh;
        string trip, f_name, s_name;
        string name1, name2;
        string title, date1;
        int amount;
        int pay1, pay2;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["trip"].ToString();
            trip = Session["trip"].ToString();
            name1 = Session["f_name"].ToString();
            name2 = Session["s_name"].ToString();

            DropDownList1.Items.Add(name1);
            DropDownList1.Items.Add(name2);



            

            qry = "select ( sum(amount), sum(f_name), sum(s_name)) from expense where session='" + trip + "'";
            dbh = new DB_Handler(); 
            ds= dbh.fetchData (qry);





        }
    }
}