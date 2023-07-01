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
    public partial class WebForm2 : System.Web.UI.Page
    {
        public MySqlConnection mycon;
        public MySqlCommand MyCm, cmd1;
        public MySqlDataAdapter myad;

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["new2"] = TextBox1.Text;
            Response.Redirect("WebForm4.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["newFeedback"] = TextBox1.Text;
            Response.Redirect("WebForm5.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["homepage2"] = TextBox1.Text;
            Response.Redirect("WebForm1.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["new"].ToString();
            

            try
            {
                mycon = new MySqlConnection("server=localhost;database=shubham_sneha_snti;user id=root;password=Mysql@1234;");
                MyCm = new MySqlCommand("select * from trainee_master where trainee_master.Reference_Number='" + TextBox1.Text + "'",mycon);
                myad = new MySqlDataAdapter(MyCm);
                DataTable dt = new DataTable();
                myad.Fill(dt);
                if(dt.Rows.Count>0)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][9].ToString();
                    TextBox6.Text = dt.Rows[0][4].ToString();
                    TextBox7.Text = dt.Rows[0][5].ToString();
                    TextBox8.Text = dt.Rows[0][6].ToString();
                    TextBox9.Text = dt.Rows[0][7].ToString();
                    TextBox10.Text = dt.Rows[0][8].ToString();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            

        }
    }
}