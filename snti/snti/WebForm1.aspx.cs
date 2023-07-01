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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public MySqlConnection mycon;
        public MySqlCommand MyCm, cmd1;
        public MySqlDataAdapter myad;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                mycon = new MySqlConnection("server=localhost;database=shubham_sneha_snti;user id=root;password=Mysql@1234;");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["New3"] = TextBox1.Text;
            Response.Redirect("WebForm3.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                mycon.Open();

                string checkUser = "select count(*) from  trainee_master where Reference_Number='" + TextBox1.Text + "' and Mobile_no=" + TextBox2.Text + "";
                cmd1 = new MySqlCommand(checkUser, mycon);
                int temp = Convert.ToInt32(cmd1.ExecuteScalar());
                
                if (temp > 0)
                {
                    //mycon.Open();
                    //string checkPasswordQuery = "select Mobile_no from  trainee_master where Reference_Number='" + TextBox1.Text + "'";
                    //cmd1 = new MySqlCommand(checkPasswordQuery, mycon);
                    //string password = cmd1.ExecuteScalar().ToString().Replace(" ", "");
                    //if (password == TextBox2.Text)
                    //{
                    Session["New"] = TextBox1.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("WebForm2.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password')</script>");
                    //Response.Write("Invalid Password");
                }
                //}
                mycon.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        
    }
}