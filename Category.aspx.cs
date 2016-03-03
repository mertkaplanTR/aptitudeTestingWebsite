using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
public partial class Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        //sayfa açılırken kullanıcı login olmuşmu olmamışmı kontrol ediyoruz
        if (Session["UserModel"] == null)
            Response.Redirect("Login.aspx");
        else
            GetBaseCategories();
    }

    // view kullanarak CategoryName ve ID yi aldık.
    void GetBaseCategories()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        DataTable dtCategory = new DataTable();
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            SqlDataAdapter adapter = new SqlDataAdapter("Select distinct CategoryName,CategoryID from GetBaseCategoriesandSubCategory", con);
            adapter.Fill(dtCategory);
            ddlBaseCategories.DataSource = dtCategory;
            ddlBaseCategories.DataTextField = "CategoryName";
            ddlBaseCategories.DataValueField = "CategoryID";
            ddlBaseCategories.DataBind();
            ddlBaseCategories.Items.Insert(0, new ListItem("Select Your Category", "0"));
        }
    }

    protected void ddlBaseCategories_SelectedIndexChanged(object sender, EventArgs e)
    {
        int CatID = Convert.ToInt32(ddlBaseCategories.SelectedValue);
        if (CatID == 0)
        {
            //ddlSubCategories.Items.Clear();
            //ddlSubCategories.Items.Insert(0, new ListItem("Please select the base Category", "0"));
        }
        GetSubCategories(CatID);
    }

    void GetSubCategories(int categoryID)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        DataTable dtCategory = new DataTable();

        con.Open();

        if (con.State == ConnectionState.Open)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("GetSubCategoriesByID", con);

            cmd.CommandType = CommandType.StoredProcedure;
            //Add parameter and value
            cmd.Parameters.Add(new SqlParameter("@CategoryID", categoryID));
            SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
            sqlDa.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                grdSubCategories.DataSource = dt;
                grdSubCategories.DataBind();
            }
        }
    }

    protected void lbCategory_Click(object sender, EventArgs e)
    {
        //seçili olan categorinin ıd si alındı
        int catId = Convert.ToInt32(((LinkButton)sender).CommandArgument);

        Response.Redirect("Subject.aspx?CategoryID=" + catId);
    }
}