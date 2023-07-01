using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
namespace snti
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public MySqlConnection mycon;
        public MySqlCommand MyCm, cmd1;
        public MySqlDataAdapter myad;
        string userId;
        protected void Page_Load(object sender, EventArgs e)
        {
           userId= Session["newFeedback"].ToString();
            try
            {
                mycon = new MySqlConnection("server=localhost;database=shubham_sneha_snti;user id=root;password=Mysql@1234;");
                if (Check_feedback_Exists())
                {
                    Response.Write("<script>alert('You have already filled feedback form')</script>");
                    //session["homepage3"] = userid;
                    //response.redirect("webform1.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                if (Check_feedback_Exists())
                {
                    Response.Write("<script>alert('You have already filled feedback form')</script>");
                }
                else
                {
                    try
                    {

                        if (mycon.State == ConnectionState.Closed)    //checking that the connection between database and our project is open or not if not then open it 
                        {
                            mycon.Open();
                        }
                        //string query = select Vt_no from registration where user_id = Session["userid"].ToString();

                        MySqlCommand cmd = new MySqlCommand("insert into feedback (Reference_Number, Feed1,Feed2,Feed3,Feed4,Remarks_Suggestion)values(userId,'"+ RadioButtonList1.SelectedItem.Text+ "','" + RadioButtonList2.SelectedItem.Text + "','" + RadioButtonList3.SelectedItem.Text+ "','" + RadioButtonList4.SelectedItem.Text+ "','" + TextBox1.Text + "');", mycon);

                        //cmd.Parameters.AddWithValue("@question1", RadioButtonList1.SelectedItem.Text);
                        //cmd.Parameters.AddWithValue("@question2", RadioButtonList2.SelectedItem.Text);
                        //cmd.Parameters.AddWithValue("@question3", RadioButtonList3.SelectedItem.Text);
                        //cmd.Parameters.AddWithValue("@question4", RadioButtonList4.SelectedItem.Text);
                        //cmd.Parameters.AddWithValue("@question5", TextBox1.Text);

                        cmd.ExecuteNonQuery();                       
                        mycon.Close();
                        Response.Write("<script> alert ('hello success'); </Script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script> alert ('" + ex.Message + "'); </Script>");
                    }
                }
            
        }


        bool Check_feedback_Exists()
        {
            try
            {

                if (mycon.State == ConnectionState.Closed)    //checking that the connection between database and our project is open or not if not then open it 
                {
                    mycon.Open();
                }

                MySqlCommand cmd = new MySqlCommand("select * from feedback where Reference_Number = '" + userId + "' ; ", mycon);
                //MySqlDataAdapter da = new MySqlDataAdapter(cmd);    //it is used for database connectivity in a disconnected way (means as soon as query is executed the database get deleted)
                //DataTable dt = new DataTable();  //creating a temporaray table in database
                //da.Fill(dt);  //filling data with the value dt

                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    mycon.Close();
                    return true;
                }
                else
                {
                    mycon.Close();
                    return false;
                }                
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert ('" + ex.Message + "'); </script>");
                return false;
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["homepage3"] = userId;
            Response.Redirect("WebForm1.aspx");
        }

    }
}