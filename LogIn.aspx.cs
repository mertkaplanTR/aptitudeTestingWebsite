using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        //sayfa açılırken kullanıcı login olmuşmu olmamışmı kontrol ediyoruz, 
        // login ise giriş yap sayfasını açamasın
        if (Session["UserModel"] != null)
            Response.Redirect("Category.aspx");
    }
    protected void LoginButon_Click(object sender, EventArgs e)
    {
        if (TextBoxUser.Text == "" && TextBoxPassword.Text == "")
        {
            ErrorLabel.Text = "Empty Field,Please fill them!";
        }
   else if (TextBoxUser.Text == "" || TextBoxPassword.Text == "")
            ErrorLabel.Text = "User not found.";

        else
        {
            bool result = LoginUser();
            if (result == true)
            {
                Response.Redirect("Category.aspx");
            }

            else
            {
                ErrorLabel.Text = "User not found.";
            }
        }
    }

    bool LoginUser()
    {
        bool result = false;
        string mail = TextBoxUser.Text;
        string password = TextBoxPassword.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        DataTable dtCategory = new DataTable();

        con.Open();

        if (con.State == ConnectionState.Open)
        {
            DataTable dt = new DataTable();
            SqlCommand com = new SqlCommand("SELECT [Aptitude].[CheckUserExist](@Email,@Password)", con);

            com.CommandType = CommandType.Text;
            com.Parameters.Add(new SqlParameter("@Email", mail));
            com.Parameters.Add(new SqlParameter("@Password", password));

            if (Convert.ToInt32(com.ExecuteScalar()) > 0)
            {
                //kullanıcının ID sini session a attık diğer sayfalarda kullanmak için
                int userID = Convert.ToInt32(com.ExecuteScalar());
                CreateUserSession(userID); // su kısım user Id alıp Sessionu olusturuyor.

                result = true;
            }
            else
                result = false;
        }
        return result;
    }

    void CreateUserSession(int userID)
        // bu kısım boyle bir user database de var mı yok mu diye bakıyor.
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        DataTable dtUser = new DataTable();

        con.Open();

        if (con.State == ConnectionState.Open)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("LogInUserSP", con);

            cmd.CommandType = CommandType.StoredProcedure;
            //Add parameter and value
            cmd.Parameters.Add(new SqlParameter("@UserID", userID));
            SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
            sqlDa.Fill(dt);

            if (dt.Rows.Count > 0)//sql den kayıt dönmüşmü dönmemiimi kontrolü
            {
                UserModel user = new UserModel();
                foreach (DataRow item in dt.Rows)
                {
                    user.FullName = item["FirstName"].ToString() + " " + item["LastName"].ToString();
                    user.UserID = (int)item["UserID"];
                    user.Email = item["Email"].ToString();
                }
                //login olan kullanıcıyı sessiona attık
                Session["UserModel"] = user;
            }
        }
    }
    protected void RegisterHyperLink_DataBinding(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}