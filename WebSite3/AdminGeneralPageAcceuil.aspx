<%@ Page Title="" Language="C#" MasterPageFile="~/GestionAdminGeneral.master" AutoEventWireup="true" CodeFile="AdminGeneralPageAcceuil.aspx.cs" Inherits="AdminGeneralPageAcceuil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
<asp:Panel ID="Panel4" runat="server" 
    style="z-index: 1; left: 288px; top: 1px; position: absolute; height: 321px; width: 325px">
    <asp:Label ID="Label3" runat="server" Font-Size="13pt" 
        style="z-index: 1; left: 7px; top: 107px; position: absolute; font-weight: 700; color: #0000FF; width: 319px" 
        Text="Page réservée à l'administrateur générale"></asp:Label>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 6px; top: 13px; position: absolute" 
        Text="Déconnexion" />
</asp:Panel>
</form>
</asp:Content>

