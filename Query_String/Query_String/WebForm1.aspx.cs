using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Query_String
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void SendButton_Click(object sender, EventArgs e)
        {
			//Response.Redirect("WebForm2.aspx?id=" + IdTextBox.Text + "&name=" + NameTextBox.Text + "&age=" + AgeTextBox.Text);
			//Response.Redirect("WebForm2.aspx?id=" + Server.UrlEncode(IdTextBox.Text) + "&name=" + Server.UrlEncode(NameTextBox.Text) + "&age=" + Server.UrlEncode(AgeTextBox.Text));
			Response.Redirect("WebForm2.aspx?id=" + IdTextBox.Text.Replace("&", "%26") + "&name=" + NameTextBox.Text.Replace("&", "%26") + "&age=" + AgeTextBox.Text.Replace("&", "%"));

		}
    }
}