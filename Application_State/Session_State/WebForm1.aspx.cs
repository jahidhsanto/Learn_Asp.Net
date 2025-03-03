using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session_State
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
			//We can write any one from below both
			//Session.Add("user", UserTextBox.Text);
			Application["user"] = UserTextBox.Text;
			Response.Redirect("WebForm2.aspx");
        }
    }
}