using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;


/// <summary>
/// Description résumée de CCnx
/// </summary>
 public class CCnx
{
     public SqlDataAdapter dad;
     public DataTable Tab;
     public DataSet Dst;
     public SqlConnection Con;
     public SqlCommand Com;
     String S;
     public CCnx()
     { }
     public void Open()
   
    
    {



        

        S = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=gestionrayyles;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover = False";
        Con = new SqlConnection(S);
         Con.Open();
     }
     public void Consultation(String Ch)
     {
         SqlConnection Con = new SqlConnection(S);
         SqlCommand Com = new SqlCommand();
         Com.Connection = Con;
         Com.CommandType = CommandType.Text;
         Com.CommandText = Ch;
         dad = new SqlDataAdapter(Com);
         Dst = new DataSet();
         dad.Fill(Dst, Com.CommandText);
         Tab = Dst.Tables[Com.CommandText];
     }
 } 