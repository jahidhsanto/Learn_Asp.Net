<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Form01.aspx.cs" Inherits="STORE.Forms.Form01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2 class="text-center">Order Form</h2>
        <hr />

        <div class="row">
            <div class="col-md-6">
                <h4>Customer Details</h4>

                <div class="mb-3">
                    <label for="txtName" class="form-label">Full Name</label>
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                        ErrorMessage="Name is required." CssClass="text-danger" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <label for="txtEmail" class="form-label">Email</label>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email" />
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Email is required." CssClass="text-danger" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid email format." ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$"
                        CssClass="text-danger" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <label for="txtPhone" class="form-label">Phone Number</label>
                    <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" TextMode="Phone" />
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                        ErrorMessage="Phone number is required." CssClass="text-danger" Display="Dynamic" />
                </div>
            </div>

            <div class="col-md-6">
                <h4>Order Details</h4>

                <div class="mb-3">
                    <label for="ddlProduct" class="form-label">Select Product</label>
                    <asp:DropDownList ID="ddlProduct" CssClass="form-control" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged">
                        <asp:ListItem Text="Select Product" Value="" />
                        <asp:ListItem Text="Laptop - $1000" Value="1000" />
                        <asp:ListItem Text="Phone - $600" Value="600" />
                        <asp:ListItem Text="Headphones - $150" Value="150" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvProduct" runat="server" ControlToValidate="ddlProduct"
                        ErrorMessage="Please select a product." CssClass="text-danger" InitialValue="" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <label for="txtQuantity" class="form-label">Quantity</label>
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server" TextMode="Number" AutoPostBack="true"
                        OnTextChanged="txtQuantity_TextChanged" />
                    <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" ControlToValidate="txtQuantity"
                        ErrorMessage="Enter quantity." CssClass="text-danger" Display="Dynamic" />
                    <asp:RangeValidator ID="rvQuantity" runat="server" ControlToValidate="txtQuantity"
                        MinimumValue="1" MaximumValue="100" Type="Integer"
                        ErrorMessage="Quantity must be between 1 and 100." CssClass="text-danger" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <label for="txtTotal" class="form-label">Total Price ($)</label>
                    <asp:TextBox ID="txtTotal" CssClass="form-control" runat="server" ReadOnly="true" />
                </div>

                <div class="mb-3">
                    <label for="ddlPayment" class="form-label">Payment Method</label>
                    <asp:DropDownList ID="ddlPayment" CssClass="form-control" runat="server">
                        <asp:ListItem Text="Select Payment Method" Value="" />
                        <asp:ListItem Text="Credit Card" Value="Credit Card" />
                        <asp:ListItem Text="PayPal" Value="PayPal" />
                        <asp:ListItem Text="Cash on Delivery" Value="Cash on Delivery" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvPayment" runat="server" ControlToValidate="ddlPayment"
                        ErrorMessage="Select a payment method." CssClass="text-danger" InitialValue="" Display="Dynamic" />
                </div>
            </div>
        </div>

        <div class="text-center">
            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Place Order" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnReset" CssClass="btn btn-secondary" runat="server" Text="Reset" OnClick="btnReset_Click" CausesValidation="false" />
        </div>
    </div>
</asp:Content>