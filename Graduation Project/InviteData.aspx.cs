using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Graduation_Project
{
    public partial class WebForm4 : System.Web.UI.Page
    {
 

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddinvite_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\DELL\Desktop\OB chapter\GP fall2023\Graduation Project\Graduation Project\App_Data\DBtodo.mdf;Integrated Security=True");

            SqlCommand cmd = new SqlCommand();
            try
            {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
            cmd.CommandText= "INSERT INTO InviteData VALUES (@UserID,@Date,@Major,@NumberOfSeats)";
            cmd.Parameters.AddWithValue("@UserID",Session["userid"].ToString());
            cmd.Parameters.AddWithValue("@Date", "");
            cmd.Parameters.AddWithValue("@Major",txtmajor.Text);
            cmd.Parameters.AddWithValue("@NumberOfSeats",txtnumberofseats.Text);

            cmd.ExecuteNonQuery();
            lblText.Text = "new invite is added";
            con.Close();
            }
            catch(Exception ex)
            {
                lblText.Text="contact system admin";
            }

              
        }
    }
}