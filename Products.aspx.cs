using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Products : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;persistsecurityinfo=True;database=jaykantdb;password=root;allowuservariables=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            con.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter("select * from carmake", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "carmake_name";
            DropDownList1.DataValueField = "carmake_id";
            DropDownList1.DataBind();
            con.Close();
            ListItem lstitem = new ListItem("--select--", "0");
            DropDownList1.Items.Insert(0, lstitem);
            DropDownList2.Items.Insert(0, lstitem);
            DropDownList3.Items.Insert(0, lstitem);

        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {     
        int a = Convert.ToInt32(DropDownList1.SelectedItem.Value);
        con.Open();
        MySqlDataAdapter sda = new MySqlDataAdapter("select * from carmodel where fcarmake_id="+a, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DropDownList2.DataSource = dt;
        DropDownList2.DataTextField = "carmodel_name";
        DropDownList2.DataValueField = "carmodel_name";
        DropDownList2.DataBind();
        con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String a = DropDownList1.SelectedItem.Text;
        String b = DropDownList2.SelectedItem.Text;
        String c = DropDownList3.SelectedItem.Value;
        Response.Redirect("SearchResults.aspx?test1=" + a + "&test2="+ b + "&test3=" + c);

    }
}