<%@ Page Title="" Language="C#" MasterPageFile="~/Principale.master" AutoEventWireup="false" CodeFile="AdminGeneral.aspx.cs" Inherits="AdminGenerale1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" 

    style="z-index: 1; left: 2px; top: 7px; position: absolute; height: 318px; width: 601px; bottom: 3px">
<asp:Panel ID="Panel1" runat="server" Height="290px" 
    style="height: 290px; width: 902px">
    <asp:Label ID="login" runat="server" Text="Login" 
        style="z-index: 1; left: 190px; top: 74px; position: absolute"></asp:Label>
    <asp:Label ID="password" runat="server" 
        
        style="z-index: 1; left: 188px; top: 126px; position: absolute; height: 19px;" 
        Text="Password"></asp:Label>
    <asp:TextBox ID="Tnom" runat="server" 
        style="z-index: 1; left: 287px; top: 74px; position: absolute; width: 143px;"></asp:TextBox>


    <asp:TextBox ID="Tpass" runat="server" 
        style="z-index: 1; left: 286px; top: 124px; position: absolute; width: 142px;" ></asp:TextBox>

    <asp:Button ID="Button1" runat="server"  
        style="z-index: 1; left: 307px; top: 168px; position: absolute; height: 24px; width: 111px" 
        Text="Valider" onclick="Button1_Click" />

    <asp:Label ID="Label4" runat="server"    
        style="z-index: 1; left: 294px; top: 222px; position: absolute; height: 19px;" 
        Text="Mot de pass incorrect" Visible="False"></asp:Label>

</asp:Panel>
</form>
</asp:Content>

