using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STORE.Forms
{
	public partial class Form02 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            // Page Load logic if needed
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Handle form submission logic here
            string username = txtUsername.Text;
            string recipient = txtRecipientUsername.Text;
            string url = txtVanityURL.Text;
            string amount = txtAmount.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            // Example: Store in database, display a message, etc.
            Response.Write("<script>alert('Form submitted successfully!');</script>");
        }
    }
}
