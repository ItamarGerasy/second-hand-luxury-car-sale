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

public partial class adminChangeNameForm : System.Web.UI.Page
{
    protected string strError = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["adminUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (this.IsPostBack)
        {
            string newName = Request.Form["newName"];
            string oldName = Session["adminUser"].ToString();
            string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
            DAL dal = new DAL(dbPath);
            string xmlFilePath = this.MapPath("adminList.xml");
            UtilityManegers um = new UtilityManegers(xmlFilePath, dal);
            if (um.Exist(newName))
            {
                strError = "שם מנהל זה כבר תפוס";
            }
            else
            {
                um.ChangeName(oldName, newName);
                strError = "שם המנהל שונה בהצלחה";
            }
        }
    }
}
