<%@ Page Title="" Language="C#" MasterPageFile="~/Principale.master" AutoEventWireup="true" CodeFile="InscriptionAdminRallye.aspx.cs" Inherits="InscriptionAdminRallye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel3" runat="server" Height="325px" Width="919px">
        <asp:Label ID="Label2" runat="server" 
    style="z-index: 1; left: 232px; top: 28px; position: absolute" Text="Inscription d'un administrateur de rallye"></asp:Label>
        <asp:TextBox ID="nom" runat="server" 
            style="z-index: 1; left: 333px; top: 72px; position: absolute; width: 138px"></asp:TextBox>
        <asp:TextBox ID="pre" runat="server" 
            style="z-index: 1; left: 332px; top: 107px; position: absolute; width: 138px"></asp:TextBox>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
            onselectionchanged="Calendar1_SelectionChanged" 
            style="z-index: 1; left: 577px; top: 139px; position: absolute; height: 171px; width: 243px" 
            Visible="False" Width="200px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
        <asp:TextBox ID="date" runat="server" 
            style="z-index: 1; left: 331px; top: 140px; position: absolute; width: 138px"></asp:TextBox>
        <asp:TextBox ID="lg" runat="server" 
            style="z-index: 1; left: 330px; top: 182px; position: absolute; width: 138px"></asp:TextBox>
        <asp:TextBox ID="mp" runat="server"  
            style="z-index: 1; left: 330px; top: 220px; position: absolute; width: 138px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 206px; top: 77px; position: absolute; height: 14px; width: 46px" 
            Text="Nom"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 206px; top: 104px; position: absolute" Text="Prénom"></asp:Label>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 204px; top: 138px; position: absolute" 
            Text="Date de naissance"></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 204px; top: 181px; position: absolute" Text="Login"></asp:Label>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 204px; top: 219px; position: absolute" 
            Text="Mot de Pass"></asp:Label>
        <asp:Button ID="dtns" runat="server" onclick="dtns_Click" 
            style="z-index: 1; left: 477px; top: 141px; position: absolute; height: 19px; width: 18px" 
            Text="..." />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 365px; top: 274px; position: absolute; height: 26px; width: 60px" 
            Text="Valider" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:gestionrayylesConnectionString %>" 
            SelectCommand="SELECT * FROM [AdminRallye]" DeleteCommand="DELETE FROM [AdminRallye] WHERE [LoginAdminRallye] = @LoginAdminRallye" InsertCommand="INSERT INTO [AdminRallye] ([LoginAdminRallye], [MotDePasse], [NomAdmin], [PrenomAdmin], [DateNaissance]) VALUES (@LoginAdminRallye, @MotDePasse, @NomAdmin, @PrenomAdmin, @DateNaissance)" UpdateCommand="UPDATE [AdminRallye] SET [MotDePasse] = @MotDePasse, [NomAdmin] = @NomAdmin, [PrenomAdmin] = @PrenomAdmin, [DateNaissance] = @DateNaissance WHERE [LoginAdminRallye] = @LoginAdminRallye" ProviderName="System.Data.SqlClient">
            <DeleteParameters>
                <asp:Parameter Name="LoginAdminRallye" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="lg" Name="LoginAdminRallye" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="mp" Name="MotDePasse" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="nom" Name="NomAdmin" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="pre" Name="PrenomAdmin" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="date" Name="DateNaissance" PropertyName="Text" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MotDePasse" Type="String" />
                <asp:Parameter Name="NomAdmin" Type="String" />
                <asp:Parameter Name="PrenomAdmin" Type="String" />
                <asp:Parameter Name="DateNaissance" Type="DateTime" />
                <asp:Parameter Name="LoginAdminRallye" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </form>
</asp:Content>

