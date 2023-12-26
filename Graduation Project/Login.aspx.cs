using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Graduation_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\DELL\Desktop\OB chapter\GP fall2023\Graduation Project\Graduation Project\App_Data\DBtodo.mdf;Integrated Security=True");

            SqlCommand cmd = new SqlCommand();
            con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
            cmd.CommandText= "SELECT * from UserData where UserName = @UserName and Password = @Password ";
            cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
            cmd.Parameters.AddWithValue("@Passwors", txtpassword.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if(dr.HasRows)
            {lblText.Text="correct Username and Password";
                if(dr.Read())
                {
                    Session["userid"] = dr[0].ToString();
                    Session["email"] = dr[2].ToString();
                    Session["usertype"] = dr[5].ToString();
                }

                Response.Redirect("home.aspx");
            }
            else
            {
                lblText.Text ="you Enterd Wrong Usernamr and Password";
            }




        }
    }
}