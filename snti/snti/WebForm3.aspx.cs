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
    public partial class WebForm3 : System.Web.UI.Page
    {
        public MySqlConnection mycon;
        public MySqlCommand MyCm, cmd1;
        public MySqlDataAdapter myad;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("<script>window.alert('Record submitted Successfully')</script>");
            //TextBox1.Text = Session["new3"].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Session["homepage"] = "go to homepage";
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>window.alert('Record submitted Successfully')</script>");
            try
            {
                mycon = new MySqlConnection("server=localhost;database=shubham_sneha_snti;user id=root;password=Mysql@1234;");
                MyCm = new MySqlCommand("insert into trainee_master set Reference_Number='" + TextBox1.Text + "',Name='" + TextBox2.Text + "',Discipline='" + DropDownList1.Text + "',Branch='" + DropDownList2.Text + "',Mobile_No='" + TextBox6.Text + "',Email='" + TextBox7.Text + "',Guide_PNo='" + TextBox8.Text + "',Guide_Name='" + TextBox9.Text + "',Project_Title='" + TextBox10.Text + "',College_Name='" + TextBox5.Text + "';", mycon);
                if (TextBox1.Text == "" || TextBox2.Text == "" || DropDownList1.Text == "" || DropDownList2.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox9.Text == "" || TextBox10.Text == "")
                {
                    Response.Write("<script>window.alert('Enter all field values!!!')</script>");
                }
                else
                {
                    mycon.Open();
                    MyCm.ExecuteNonQuery();
                    mycon.Close();
                    Response.Write("<script>window.alert('Record submitted Successfully')</script>");
                    try
                    {
                        Session["new2"] = TextBox1.Text;
                        Response.Redirect("WebForm4.aspx");
                    }
                    catch (Exception ex1)
                    {
                        Response.Write(ex1.ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
    }
}