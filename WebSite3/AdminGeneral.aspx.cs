using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AdminGenerale1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((String)Session["AdminGeneral"] == null)
            Tnom.Focus();
        else
            Response.Redirect("AdminGeneralPageAcceuil.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         AdminGeneral or = new AdminGeneral();
         or.SetLoginAdminGeneral(Tnom.Text); or.SetMotDePasse(Tpass.Text);
         if (or.UnicId())
         {
            Session["AdminGeneral"]=Tnom.Text;
            Response.Redirect("AdminGeneralPageAcceuil.aspx");
         }
         else
         {
             Tnom.Text = "";
             Tpass.Text ="";
             Tnom.Focus();
             Label4.Visible =true;
         } 
    }
   
}