using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STORE.Forms
{
	public partial class Form01 : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtTotal.Text = "0";
            }
        }
        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalculateTotal();
        }

        protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {
            CalculateTotal();
        }

        private void CalculateTotal()
        {
            if (int.TryParse(txtQuantity.Text, out int quantity) && int.TryParse(ddlProduct.SelectedValue, out int price))
            {
                txtTotal.Text = (quantity * price).ToString();
            }
            else
            {
                txtTotal.Text = "0";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Here, you can save order data to a database or send a confirmation email
                string message = "Order placed successfully!";
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + message + "');", true);
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            ddlProduct.SelectedIndex = 0;
            txtQuantity.Text = "";
            txtTotal.Text = "0";
            ddlPayment.SelectedIndex = 0;
        }
    }
}