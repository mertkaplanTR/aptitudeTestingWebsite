using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Subject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        //sayfa açılırken kullanıcı login olmuşmu olmamışmı kontrol ediyoruz
        if (Session["UserModel"] == null)
            Response.Redirect("Login.aspx");

        //bir önceki sayfadan seçilen kategorinin ID si bu sayfaya gönderiliyor
        if (Request.QueryString["CategoryID"] == null)
            Response.Redirect("Category.aspx");
        else
        {
            int catID = Convert.ToInt32(Request.QueryString["CategoryID"]);
            GetSubjectsbyCategoryID(catID);
        }
    }

    void GetSubjectsbyCategoryID(int categoryID)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        DataTable dtCategory = new DataTable();

        con.Open();

        if (con.State == ConnectionState.Open)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("GetSubjectsByCategoryID", con);

            cmd.CommandType = CommandType.StoredProcedure;
            //Add parameter and value
            cmd.Parameters.Add(new SqlParameter("@CategoryID", categoryID));
            SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
            sqlDa.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                grdSubjects.DataSource = dt;
                grdSubjects.DataBind();
            }
        }
    }

    protected void lbSubject_Click(object sender, EventArgs e)
    {
        //seçili olan categorinin ıd si alındı
        int subID = Convert.ToInt32(((LinkButton)sender).CommandArgument);

        //subjectleri almak için diğer sayfaya yönlendiriliyor
        Response.Redirect("Exam.aspx?SubjectID=" + subID);
    }
}