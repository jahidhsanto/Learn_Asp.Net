<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Form02.aspx.cs" Inherits="STORE.Forms.Form02" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-6">
        <!--begin::Input Group-->
        <div class="card card-success card-outline mb-4">
            <!--begin::Header-->
            <div class="card-header">
                <div class="card-title">Input Group</div>
            </div>
            <!--end::Header-->
            <!--begin::Body-->
            <div class="card-body">
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1">@</span>
                    <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                </div>
                <div class="input-group mb-3">
                    <asp:TextBox ID="txtRecipientUsername" CssClass="form-control" placeholder="Recipient's username" runat="server"></asp:TextBox>
                    <span class="input-group-text" id="basic-addon2">@example.com</span>
                </div>
                <div class="mb-3">
                    <label for="basic-url" class="form-label">Your vanity URL</label>
                    <div class="input-group">
                        <span class="input-group-text">https://example.com/users/</span>
                        <asp:TextBox ID="txtVanityURL" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">$</span>
                    <asp:TextBox ID="txtAmount" CssClass="form-control" runat="server"></asp:TextBox>
                    <span class="input-group-text">.00</span>
                </div>
                <div class="input-group mb-3">
                    <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-text">With textarea</span>
                    <asp:TextBox ID="txtMessage" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
            </div>
            <!--end::Body-->
            <!--begin::Footer-->
            <div class="card-footer">
                <asp:Button ID="btnSubmit" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
            <!--end::Footer-->
        </div>
        <!--end::Input Group-->
    </div>
</asp:Content>