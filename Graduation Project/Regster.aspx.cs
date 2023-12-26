using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;


namespace Graduation_Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\DELL\Desktop\OB chapter\GP fall2023\Graduation Project\Graduation Project\App_Data\DBtodo.mdf;Integrated Security=True");

            SqlCommand cmd = new SqlCommand();
                    con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO UserData VALUES(@UserName.@Email,@Password,@Address,@UserType)";

        cmd.Parameters.AddWithValue("@UserName", txtUser.Text);
        cmd.Parameters.AddWithValue("@Email",txtEmail.Text);
        cmd.Parameters.AddWithValue("@Password",txtPss.Text);
            cmd.Parameters.AddWithValue("@Address",txtAddress.Text);
            cmd.Parameters.AddWithValue("@UserType", "staff");


                    cmd.ExecuteNonQuery();
                   lblText.Text = "New Account has been Created";
            Response.Redirect("Home.aspx");
                  con.Close();

        }
    }
}