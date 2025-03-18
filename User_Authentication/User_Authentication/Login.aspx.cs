using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Authentication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Clear(); // Clear any previous sessions
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (AuthenticateUser(username, password, out string role))
            {
                Session["Username"] = username;
                Session["Role"] = role;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }

        private bool AuthenticateUser(string username, string password, out string role)
        {
            role = string.Empty;

            string connStr = ConfigurationManager.ConnectionStrings["StoreDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand("UserLogin", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        conn.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            role = reader["Role"].ToString();
                            return true;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "Database error: " + ex.Message;
                    }
                }
            }
            return false;
        }


        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    string username = txtUsername.Text.Trim();
        //    string password = txtPassword.Text.Trim();

        //    // Secure password hash comparison
        //    string hashedPassword = HashPassword(password);

        //    string connStr = ConfigurationManager.ConnectionStrings["StoreDB"].ConnectionString;
        //    using (SqlConnection conn = new SqlConnection(connStr))
        //    {
        //        string query = @"
        //                        EXEC UserLogin 
        //                        @Username = @Username, 
        //                        @Password = @Password;"; // Ensure parameterized query to prevent SQL injection
        //        using (SqlCommand cmd = new SqlCommand(query, conn))
        //        {
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.Parameters.AddWithValue("@Username", username);
        //            cmd.Parameters.AddWithValue("@Password", hashedPassword); // Send hashed password for comparison

        //            try
        //            {
        //                conn.Open();
        //                SqlDataReader reader = cmd.ExecuteReader();
        //                if (reader.Read())
        //                {
        //                    // Store user info in session
        //                    Session["Username"] = reader["Username"].ToString();
        //                    Session["UserID"] = reader["UserID"].ToString();
        //                    Response.Redirect("Dashboard.aspx");
        //                }
        //                else
        //                {
        //                    lblMessage.Text = "Invalid username or password.";
        //                }
        //            }
        //            catch (Exception ex)
        //            {
        //                lblMessage.Text = "An error occurred while processing your request. Please try again later.";
        //                // Log exception details (ex.Message) for debugging purposes
        //            }
        //        }
        //    }
        //}

        // Method to hash password using SHA256
        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                StringBuilder builder = new StringBuilder();
                foreach (byte b in bytes)
                {
                    builder.Append(b.ToString("x2"));
                }
                return builder.ToString(); // Return the hashed password
            }
        }
    }
}
