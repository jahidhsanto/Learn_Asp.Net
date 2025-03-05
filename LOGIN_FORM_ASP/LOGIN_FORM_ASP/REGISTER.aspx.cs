using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOGIN_FORM_ASP
{
	public partial class REGISTER : System.Web.UI.Page
	{
		string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(cs);
			String query = "insert into signup values(@fname, @lname, @gender, @email, @address, @username, @password)";
			SqlCommand cmd = new SqlCommand(query, con);
			cmd.Parameters.AddWithValue("@fname", FirstNameTextBox.Text);
			cmd.Parameters.AddWithValue("@lname", LastNameTextBox.Text);
			cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.Value);
			cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
			cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
			cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
			cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

			con.Open();
			int a = cmd.ExecuteNonQuery();
			if (a > 0)
			{
				ClientScript.RegisterStartupScript(typeof(Page), "scripts", "alert('Signup Successfull.. Username is: " + UsernameTextBox.Text + " and Password: " + PasswordTextBox.Text + "');", true);
				ClearControls();
			}
			else
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Signup Failed !!')</script>");
			}
			con.Close();
		}
		void ClearControls()
		{
			FirstNameTextBox.Text = LastNameTextBox.Text = EmailTextBox.Text = AddressTextBox.Text = UsernameTextBox.Text = PasswordTextBox.Text = ConfirmPasswordTextBox.Text = "";
			GenderDropDownList.ClearSelection();
		}
    }
}