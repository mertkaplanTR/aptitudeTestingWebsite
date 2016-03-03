using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        //sayfa açılırken kullanıcı login olmuşmu olmamışmı kontrol ediyoruz, login ise üye ol sayfasını açamasın
        if (Session["UserModel"] != null)
            Response.Redirect("Category.aspx");
    }

    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        DataTable dtUser = new DataTable();
        con.Open();
        if (PasswordTB.Text == CPasswordTB.Text && FNameTB.Text != "" && LNameTB.Text != "" && EmailTB.Text != "")
        {
            string fname = FNameTB.Text;
            string lname = LNameTB.Text;
            string email = EmailTB.Text;
            string password = PasswordTB.Text;
            SqlCommand cmd = new SqlCommand("InsertUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@FirstName", fname));
            cmd.Parameters.Add(new SqlParameter("@LastName", lname));
            cmd.Parameters.Add(new SqlParameter("@Email", email));
            cmd.Parameters.Add(new SqlParameter("@Password", password));
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = "Sing Up Complete";
            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = "Sing Up Failed. You should fill all context!";
            }
        }
        else
        {
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = "Something went wrong,Check your information again!";
        }
        Response.Redirect("Category.aspx");
    }
    protected void LogInButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");
    }
}