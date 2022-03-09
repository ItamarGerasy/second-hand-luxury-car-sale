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

public partial class advencedSelect : System.Web.UI.Page
{
    protected string strTable = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Data.DataSet ds;
        if (this.Session["adminUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (this.IsPostBack)
        {
            string gender = Request.Form["gender"];
            int birthYear = int.Parse(Request.Form["birthYear"]);
            string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
            string xmlFilePath = this.MapPath("adminList.xml");
            DAL dal = new DAL(dbPath);
            UtilityManegers um = new UtilityManegers(xmlFilePath, dal);
            ds = um.GetUsersByBirthyearAndGenger(birthYear, gender);
            strTable += "<center>";
            if (ds.Tables[0].Rows.Count == 0)
            {
                strTable += "אין נירשמים" + "</br>";
            }
            else
            {

                strTable += "<h1>";
                strTable += "טבלת הרשומים באתר";
                strTable += "</h1>";
                strTable += "<table border=3 cellpadding=4 cellspacing=2>";
                strTable += "<tr>";
                strTable += "<th><center><font face=arial size2 color=#C21657>שם פרטי</center></font></th>";
                strTable += "<th><center><font face=arial size2 color=#C21657> שם משפחה</center></font></th>";
                strTable += "<th><center><font face=arial size2 color=#C21657>פלאפון</center></font></th>";
                strTable += "<th><center><font face=arial size2 color=#C21657>אימייל</center></font></th>";
                strTable += "<th><center><font face=arial size2 color=#C21657>שם משתמש</center></font></th>";
                strTable += "<th><center><font face=arial size2 color=#C21657>סיסמה</center></font></th>";
                strTable += "<th><center><font face=arial size2 color=#C21657>מין</center></font></th>";
                strTable += "<th><center><font face=arial size2 color=#C21657>שנת לידה</center></font></th>";
                strTable += "</tr>";

                foreach (System.Data.DataRow row in ds.Tables[0].Rows)
                {
                    strTable += "<tr>";
                    strTable += "<td><center>" + row["firstName"] + "</center></td>";
                    strTable += "<td><center>" + row["lastName"] + "</center></td>";
                    strTable += "<td><center>" + row["phoneNum"] + "</center></td>";
                    strTable += "<td><center>" + row["email"] + "</center></td>";
                    strTable += "<td><center>" + row["userName"] + "</center></td>";
                    strTable += "<td><center>" + row["password"] + "</center></td>";
                    strTable += "<td><center>" + row["gender"] + "</center></td>";
                    strTable += "<td><center>" + row["birthYear"] + "</center></td>";
                    strTable += "</tr>";
                }
                strTable += "</table>";
            }
        }
    }
}
