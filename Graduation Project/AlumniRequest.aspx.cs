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
    public partial class WebForm6 : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\DELL\Desktop\OB chapter\GP fall2023\Graduation Project\Graduation Project\App_Data\DBtodo.mdf;Integrated Security=True");

                SqlCommand cmd = new SqlCommand();

             con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO AlumniRequestData VALUES(@UserID,@RequestName,@RequestDate,@RequestType)";

                      cmd.Parameters.AddWithValue("@UserID",Session["userid"].ToString());
                    cmd.Parameters.AddWithValue("@RequestName",txtRequestName.Text);
                   cmd.Parameters.AddWithValue("@RequestDate","");
            cmd.Parameters.AddWithValue("@RequestType",DropDownList1.SelectedItem);
           


                    cmd.ExecuteNonQuery();
                   lblText.Text = "New Request has been Created";

             Response.Redirect("home.aspx");
                  con.Close();
        }
    }
}