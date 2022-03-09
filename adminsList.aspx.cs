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

public partial class adminsList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Data.DataSet ds;
        if (this.Session["adminUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
        string xmlFilePath = this.MapPath("adminList.xml");
        DAL dal = new DAL(dbPath);
        UtilityManegers um = new UtilityManegers(xmlFilePath, dal);
        ds = um.GetAdmins();
        Response.Write("<center>");
        Response.Write("<h1>");
        Response.Write("טבלת המנהלים באתר");
        Response.Write("</h1>");
        Response.Write("<table border=3 cellpadding=4 cellspacing=2>");
        Response.Write("<tr>");
        Response.Write("<th><center><font face=arial size2 color=#C21657>שם מנהל</center></font></th>");
        Response.Write("<th><center><font face=arial size2 color=#C21657>סיסמה</center></font></th>");
        Response.Write("</tr>");
        
        foreach (System.Data.DataRow row in ds.Tables[0].Rows)
        {
            Response.Write("<tr>");
            Response.Write("<td><center>" + row["adminName"] + "</center></td>");
            Response.Write("<td><center>" + row["password"] + "</center></td>");
            Response.Write("</tr>");
        }
        Response.Write("</table>");
        Response.Write("<a href=adminQueries.aspx>חזרה לשאילתות</a>");
        Response.Write("</center>");
    }
}
