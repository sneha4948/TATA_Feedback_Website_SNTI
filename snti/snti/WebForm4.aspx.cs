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
    public partial class WebForm4 : System.Web.UI.Page
    {
        public MySqlConnection mycon;
        public MySqlCommand MyCm, cmd1;
        public MySqlDataAdapter myad;
        string UserId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserId = Session["new2"].ToString();
                Response.Write(UserId);
                try
                {
                    mycon = new MySqlConnection("server=localhost;database=shubham_sneha_snti;user id=root;password=Mysql@1234;");
                    MyCm = new MySqlCommand("select * from trainee_master where trainee_master.Reference_Number='" + UserId.ToString() + "'", mycon);
                    myad = new MySqlDataAdapter(MyCm);
                    DataTable dt = new DataTable();
                    myad.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        TextBox1.Text = dt.Rows[0][0].ToString();
                        TextBox2.Text = dt.Rows[0][1].ToString();
                        DropDownList1.Text = dt.Rows[0][2].ToString();
                        DropDownList2.Text = dt.Rows[0][3].ToString();
                        TextBox5.Text = dt.Rows[0][9].ToString();
                        TextBox6.Text = dt.Rows[0][4].ToString();
                        TextBox7.Text = dt.Rows[0][5].ToString();
                        TextBox8.Text = dt.Rows[0][6].ToString();
                        TextBox9.Text = dt.Rows[0][7].ToString();
                        TextBox10.Text = dt.Rows[0][8].ToString();
                    }
                    //TextBox2.Focus();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["homepage1"] = "go to homepage";
            Response.Redirect("WebForm1.aspx");
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                mycon = new MySqlConnection("server=localhost;database=shubham_sneha_snti;user id=root;password=Mysql@1234;");
                string s1 = TextBox1.Text;
                Response.Write(s1);
                string s2 = TextBox2.Text;
                Response.Write(s2);
                string s3 = DropDownList1.Text;
                Response.Write(s3);
                string s4 = DropDownList2.Text;
                Response.Write(s4);
                string s5 = TextBox5.Text;
                Response.Write(s5);
                string s6 = TextBox6.Text;
                Response.Write(s6);
                string s7 = TextBox7.Text;
                Response.Write(s7);
                string s8 = TextBox8.Text;
                Response.Write(s8);
                string s9 = TextBox9.Text;
                Response.Write(s9);
                string s10 = TextBox10.Text;
                Response.Write(s10);
                //String gn = "Amit sir";
                //String sk = "update trainee_master set Guide_Name='"+ gn +"' where trainee_master.Reference_Number='" + TextBox1.Text + "'";
                string sk = "update trainee_master set Name='" + TextBox2.Text + "',Discipline='" + DropDownList1.Text + "',Branch='" + DropDownList2.Text + "',Mobile_No='" + TextBox6.Text + "',Email='" + TextBox7.Text + "',Guide_PNo='" + TextBox8.Text + "',Guide_Name='" + TextBox9.Text + "',Project_Title='" + TextBox10.Text + "',College_Name='" + TextBox5.Text + "' where trainee_master.Reference_Number='" + TextBox1.Text + "'";
                mycon.Open();
                cmd1 = new MySqlCommand(sk, mycon);                
                cmd1.ExecuteNonQuery();
                Response.Write("<script>window.alert('Record updated Successfully')</script>");
                mycon.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}
