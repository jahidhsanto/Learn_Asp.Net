using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data.SqlClient;

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
			string query = "select * from login where username = @user and password = @pass";
			SqlCommand cmd = new SqlCommand(query, con);
			cmd.Parameters.AddWithValue("@user", UserTextBox.Text);
			cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);
			con.Open();
			cmd.ExecuteReader();
			con.Close(); 
        }
    }
}