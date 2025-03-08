using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REPEATER_CONTROL
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
			DataTable dt = GetData();

			GridView1.DataSource = dt;
			GridView1.DataBind();

			Repeater1.DataSource = dt;
			Repeater1.DataBind();
		}

		DataTable GetData()
		{
			SqlConnection con = new SqlConnection(cs);
			string query = "select * from emp";
			SqlDataAdapter sda = new SqlDataAdapter(query, con);
			DataTable data = new DataTable();
			sda.Fill(data);
			return data;
		}
	}
}