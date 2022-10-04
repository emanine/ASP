<%@ Page Title="" Language="C#" MasterPageFile="~/GestionAdminGeneral.master" AutoEventWireup="true" CodeFile="AjoutAdminRallye.aspx.cs" Inherits="AjoutAdminRallye" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
<asp:Panel ID="Panel4" runat="server" 
    style="z-index: 1; left: 288px; top: 0px; position: absolute; height: 327px; width: 625px">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource2" 
        
        style="z-index: 1; left: 333px; top: 54px; position: absolute; height: 263px; width: 245px" 
        onpageindexchanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="LoginAdminRalley" HeaderText="LoginAdminRalley" 
                SortExpression="LoginAdminRalley" />
            <asp:BoundField DataField="MotDePasse" HeaderText="MotDePasse" 
                SortExpression="MotDePasse" />
            <asp:BoundField DataField="NomAdmin" HeaderText="NomAdmin" 
                SortExpression="NomAdmin" />
            <asp:BoundField DataField="PrenomAdmin" HeaderText="PrenomAdmin" 
                SortExpression="PrenomAdmin" />
            <asp:BoundField DataField="DateNaissance" HeaderText="DateNaissance" 
                SortExpression="DateNaissance" />
            <asp:ButtonField ButtonType="Button" CommandName="New" Text="Nouveau" />
        </Fields>
    </asp:DetailsView>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        style="z-index: 1; left: 7px; top: 60px; position: absolute">Se deconnecter</asp:LinkButton>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" 
        SelectCommand="SELECT * FROM [AdminRallye]"></asp:SqlDataSource>
</asp:Panel>
</form>
</asp:Content>

