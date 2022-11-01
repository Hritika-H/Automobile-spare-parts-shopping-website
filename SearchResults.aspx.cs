using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class SearchResults : System.Web.UI.Page
{
    String pid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            if (Session["username"] == null)
            {
                Label2.Text = "Hello Guest";
                LinkButton1.Visible = true;
                LinkButton2.Visible = false;
            }
            else
            {
                Label2.Text = "Hello " + Session["username"];
                LinkButton1.Visible = false;
                LinkButton2.Visible = true;
            }
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label3.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label3.Text = "0";
            }
        }  

    }
   public void BindData()
    {

    if (!string.IsNullOrEmpty(Request.QueryString["test1"]) && !string.IsNullOrEmpty(Request.QueryString["test2"]) && !string.IsNullOrEmpty(Request.QueryString["test3"]))
    {
        String a = Request.QueryString["test1"];
        String b = Request.QueryString["test2"];
        String c = Request.QueryString["test3"];
        Label1.Text += a + " " + b + " " + c;
    
        MySqlConnection conn = new MySqlConnection("server = localhost; user id = root; persistsecurityinfo = True; database = jaykantdb; password=root; allowuservariables = True");
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("select * from products where p_cmake LIKE '%" + a + "%' and p_cmodel LIKE '%" + b + "%' and sparepart LIKE '%" + c + "%'", conn);
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        cmd.Dispose();
        conn.Close();
        }
        else
        {
            Label1.Text = "Sorry couldn't find any product";
        }

    }

    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["username"] == null)
        {
            Label2.Text = "Please login to Add products to cart";
        }
        else
        {
            if (e.CommandName == "addtocart")
            {

                // DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1")); dlist.SelectedItem.ToString()
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=1");
            }
        }
        
    }

   
}