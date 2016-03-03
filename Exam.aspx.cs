using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
public partial class Exam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        //sayfa açılırken kullanıcı login olmuşmu olmamışmı kontrol ediyoruz
        if (Session["UserModel"] == null)
            Response.Redirect("Login.aspx");
        if (Request.QueryString["SubjectID"] == null)
            Response.Redirect("Subject.aspx");
        {
            int subjectID = Convert.ToInt32(Request.QueryString["SubjectID"]);
            getQuestionsbyID(subjectID);
            createUserExam();
        }
    }

    private void createUserExam()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        DataTable dtCategory = new DataTable();
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            SqlCommand cmd = new SqlCommand("InsertExam", con);

            int userID = ((UserModel)Session["UserModel"]).UserID;

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@UserID", userID));
            cmd.Parameters.Add(new SqlParameter("@StartDate", DateTime.Now));
            SqlParameter outputIdParam = new SqlParameter("@Result", SqlDbType.Int)
            {
                Direction = ParameterDirection.Output
            };
            cmd.Parameters.Add(outputIdParam);

            cmd.ExecuteScalar();

            //insert edilen exam in ID sini aldık
            int id = Convert.ToInt32(cmd.Parameters["@Result"].Value.ToString());
            UserModel user = (UserModel)Session["UserModel"];
            user.CurrentExamID = id;
        }
    }

    void getQuestionsbyID(int subjectID)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 
        DataTable dtCategory = new DataTable();
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("ShowQuestionsByID", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@SubjectID", subjectID));
            SqlDataAdapter sqlData = new SqlDataAdapter(cmd);
            sqlData.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                grdExam.DataSource = dt;
                grdExam.DataBind();
            }
        }
    }
    DataTable getOptionsbyID(int questionID)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        DataTable dt = new DataTable();
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            SqlCommand cmd = new SqlCommand("showOptionsbyID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@QuestionID", questionID));
            SqlDataAdapter sqlData = new SqlDataAdapter(cmd);
            sqlData.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ;
            }
        }
        return dt;
    }

    protected void grdExam_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int questID = Convert.ToInt32(grdExam.DataKeys[e.Row.RowIndex].Value.ToString());
            GridView grdOptions = e.Row.FindControl("grdOptions") as GridView;

            grdOptions.DataSource = getOptionsbyID(questID);
            grdOptions.DataBind();
        }
    }
    protected void lbOption_Click(object sender, EventArgs e)
    {
        int optionID = Convert.ToInt32(((LinkButton)sender).CommandArgument);
        int questionID = Convert.ToInt32(((LinkButton)sender).CommandName);
        //SEÇİLİ OLAN SORUNUN cevabını optiondı sini metoda yolladık
        InsertUserAnswer2(optionID, questionID);
    }

    protected void finishExam_Click(object sender, EventArgs e)
    {
        GetExamResult();
         
    }

    private void GetExamResult()
    {
        int examID = ((UserModel)Session["UserModel"]).CurrentExamID;
        Response.Redirect("ExamResult.aspx?ExamID=" + examID);
    }


    void InsertUserAnswer2(int optionID,int questionID)
    {
          SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 

        con.Open();
        if (con.State == ConnectionState.Open)
        {
            SqlCommand command = new SqlCommand("insert into [Aptitude].[Answer](QuestionID,OptionID,ExamID) VALUES (@QuestionID, @OptionID,@ExamID)",con);
            int examID = ((UserModel)Session["UserModel"]).CurrentExamID;
            command.Parameters.Add(new SqlParameter("@ExamID", examID));
            command.Parameters.Add(new SqlParameter("@OptionID", optionID));
            command.Parameters.Add(new SqlParameter("@QuestionID", questionID));
            int sonuc = command.ExecuteNonQuery();

        }
    }




    void InsertUserAnswer(int optionID, int questionID)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString); // sonrada neklendi. 

        con.Open();
        if (con.State == ConnectionState.Open)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("InsertAnswer", con);
            int examID = ((UserModel)Session["UserModel"]).CurrentExamID;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@ExamID", examID));
            cmd.Parameters.Add(new SqlParameter("@OptionID", optionID));
            cmd.Parameters.Add(new SqlParameter("@QuestionID", questionID));
            int result=cmd.ExecuteNonQuery();
            
            //CevapKaydedildi
            if (result > 0)
            {
                ;
            }
        }
    }
}