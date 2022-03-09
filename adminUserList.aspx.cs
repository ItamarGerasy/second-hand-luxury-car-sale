using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class adminUserList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["adminUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        System.Data.DataSet ds;
        string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
        string xmlFilePath = this.MapPath("adminList.xml");
        DAL dal = new DAL(dbPath);
        UtilityManegers um = new UtilityManegers(xmlFilePath, dal);
        string userName = Request.QueryString["userName"];
        if (userName != null)
        {
            um.DeleteUser(userName);
        } 
        ds =  um.GetUsers();
        Response.Write("<center>");
        if (ds.Tables[0].Rows.Count == 0)
        {
           Response.Write("אין נירשמים"+"</br>");
        }
        else
        {
            
            Response.Write("<h1>");
            Response.Write("טבלת הרשומים באתר");
            Response.Write("</h1>");
            Response.Write ("<table border=3 cellpadding=4 cellspacing=2>");
            Response.Write ("<tr>");
            Response.Write ("<th><center><font face=arial size2 color=#C21657>מחיקה</center></font></th>");
	        Response.Write ( "<th><center><font face=arial size2 color=#C21657>שם פרטי</center></font></th>");
	        Response.Write ( "<th><center><font face=arial size2 color=#C21657> שם משפחה</center></font></th>");
	        Response.Write ( "<th><center><font face=arial size2 color=#C21657>פלאפון</center></font></th>");
	        Response.Write ( "<th><center><font face=arial size2 color=#C21657>אימייל</center></font></th>");
	        Response.Write ( "<th><center><font face=arial size2 color=#C21657>שם משתמש</center></font></th>");
	        Response.Write ( "<th><center><font face=arial size2 color=#C21657>סיסמה</center></font></th>");
	        Response.Write ( "<th><center><font face=arial size2 color=#C21657>מין</center></font></th>");
	        Response.Write ( "<th><center><font face=arial size2 color=#C21657>שנת לידה</center></font></th>");	
	        Response.Write ( "</tr>");
            
            foreach (System.Data.DataRow row in ds.Tables[0].Rows)
           {
                Response.Write("<tr>");
                Response.Write("<td><center><a href=adminUserList.aspx?userName=" + row["userName"] + ">delete</a></center></td>");
                Response.Write ("<td><center>"+row["firstName"]+"</center></td>");
		        Response.Write ( "<td><center>"+row["lastName"]+"</center></td>");
                Response.Write ("<td><center>"+row["phoneNum"]+"</center></td>");
                Response.Write ("<td><center>"+row["email"]+"</center></td>");
                Response.Write ("<td><center>"+row["userName"]+"</center></td>");
                Response.Write ("<td><center>"+row["password"]+"</center></td>");
                Response.Write ("<td><center>"+row["gender"]+"</center></td>");
                Response.Write("<td><center>" + row["birthYear"] + "</center></td>");
		        Response.Write ("</tr>");
           }
           Response.Write ("</table>");
           
       }
       Response.Write("<a href=adminQueries.aspx>חזרה לשאילתות</a>");
       Response.Write("</center>");
    }
}
