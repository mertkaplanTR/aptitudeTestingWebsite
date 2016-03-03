using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class ExamResult : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        fillDataList();

        if (!IsPostBack)
        {
            fillDataList();

        }
        if (IsPostBack)
        {
            fillDataList();
            return;
        }
        //sayfa açılırken kullanıcı login olmuşmu olmamışmı kontrol ediyoruz
        if (Session["UserModel"] == null)
            Response.Redirect("Login.aspx");
        //diğer sayfadan bir examID ile geliyormu onu kontrol ettik
        if (Request.QueryString["ExamID"] == null)
            Response.Redirect("Exam.aspx");
        {
            lbUser.Text = ((UserModel)Session["UserModel"]).FullName;
        }
    }


    public void fillDataList()
    {
       
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-IEDUPGS\\DEV01;Initial Catalog=AptitudeDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False"); // sonrada neklendi. 
    
        con.Open();
        //string QDescriptionQuery = "SELECT QDescription  FROM [Aptitude].[Question]";
        //string AptitudeOption = "Select OptionDescription from [Aptitude].[Question] where IsAnswer='True'";
        
        string cevap = "select [QuestionID],[OptionID] from [Aptitude].[Answer]";
        //yukarıdaki kullanıcının girdigi degerler

        string dogruCevap = "select [QuestionID],[OptionID] from [Aptitude].[Option] where IsAnswer=1";
        //gercekdogruCevaplar

        SqlDataAdapter adapter1=new SqlDataAdapter(cevap,con);
        DataTable dt = new DataTable();
        adapter1.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();




        SqlDataAdapter adapter2 = new SqlDataAdapter(dogruCevap, con);
        DataTable dt2=new DataTable();
        adapter2.Fill(dt2);
        GridView2.DataSource=dt2;
        GridView2.DataBind();



     
      



    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}