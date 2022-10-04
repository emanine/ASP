<%@ Page Title="" Language="C#" MasterPageFile="~/GestionAdminGeneral.master" AutoEventWireup="true" CodeFile="ExclureAdminRallye.aspx.cs" Inherits="ExclureAdminRallye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<form id="form1" runat="server">
<asp:Panel ID="Panel4" runat="server" 
    style="z-index: 1; left: 288px; top: 0px; position: absolute; height: 327px; width: 625px">
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        style="z-index: 1; left: 7px; top: 60px; position: absolute">Se deconnecter</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        style="z-index: 1; left: 5px; top: 84px; position: absolute; height: 225px; width: 612px">
        <Columns>

            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Supprimer" />
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
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" 
        SelectCommand="SELECT * FROM [AdminRallye]"></asp:SqlDataSource>
</asp:Panel>
</form>
</asp:Content>

