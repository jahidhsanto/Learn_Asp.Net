using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INSERT_AND_RETRIEVING_IMAGES
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();
            if (!IsPostBack)
            {
                fillGridView();

            }
            if (IsPostBack)
            {
                fillGridView();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cs);
            string path = Server.MapPath("images/");
            if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string extension = Path.GetExtension(fileName);
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                int length = postedFile.ContentLength;      // Returns image is indexer bytes

                if (extension.ToLower() == ".jpg" ||
                    extension.ToLower() == ".png" ||
                    extension.ToLower() == ".jpeg")
                {
                    if (length <= 1000000)
                    {
                        FileUpload1.SaveAs(path + fileName);
                        string name = "images/" + fileName;

                        string query = "insert into img values(@img)";
                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("@img", name);

                        conn.Open();
                        int a = cmd.ExecuteNonQuery();
                        if (a > 0)
                        {
                            Label1.Text = "Inserted Successfully!!";
                            Label1.ForeColor = System.Drawing.Color.Green;
                            Label1.Visible = true;
                            fillGridView();

                            Response.Redirect("WebForm1.aspx");
                        }
                        else
                        {
                            Label1.Text = "Insertion failed!!";
                            Label1.ForeColor = System.Drawing.Color.Red;
                            Label1.Visible = true;
                        }
                        conn.Close();
                    }
                    else
                    {
                        Label1.Text = "Image file should not be greater than 1 MB";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Visible = true;
                    }

                }
                else
                {
                    Label1.Text = "Image format is not supported!!";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Please upload an Image!!";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
        void fillGridView()
        {
            SqlConnection conn = new SqlConnection(cs);
            string query = "select * from img";

            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }
}