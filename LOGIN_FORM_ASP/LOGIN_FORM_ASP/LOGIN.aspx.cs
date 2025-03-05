using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOGIN_FORM_ASP
{
	public partial class LOGIN : System.Web.UI.Page
	{
		string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void LoginButton_Click(object sender, EventArgs e)
        {
			SqlConnection con = new SqlConnection(cs);
			string query = "select * from signup where username = @user and password = @pass";
			SqlCommand cmd = new SqlCommand(query, con);
			cmd.Parameters.AddWithValue("@user", UserTextBox.Text);
			cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);
			con.Open();
			SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
			{
                // After successful login, you can set the session and redirect
                Session["user"] = UserTextBox.Text;
				//Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successful')</script>");
				Response.Redirect("DASHBOARD.aspx");
			}
			else
			{
                // If login fails, display an error message
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed')</script>");
            }
            con.Close(); 
        }
    }
}