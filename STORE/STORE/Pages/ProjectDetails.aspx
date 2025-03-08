<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="STORE.Pages.ProjectDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Item Wise Balance Stock</h2>

    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView 
            ID="ProjectDetailsGridView" 
            runat="server" 
            AutoGenerateColumns="TRUE" 
            CssClass="table table-bordered table-striped">
            <Columns>
<%--            <asp:BoundField DataField="AssetID"                 HeaderText="Asset ID"       SortExpression="AssetID" />
                <asp:BoundField DataField="MaterialsDescription"    HeaderText="Material Name"  SortExpression="MaterialsDescription" />
                <asp:BoundField DataField="StoreLocation"           HeaderText="Store Location" SortExpression="StoreLocation" />
                <asp:BoundField DataField="Total_Received_Qty"      HeaderText="Total Received" SortExpression="Total_Received_Qty" />
                <asp:BoundField DataField="Total_Issued_Qty"        HeaderText="Total Issued"   SortExpression="Total_Issued_Qty" />
                <asp:BoundField DataField="Balance_Stock"           HeaderText="Balance Stock"  SortExpression="Balance_Stock" />--%>
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
