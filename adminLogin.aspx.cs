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

public partial class adminLogin : System.Web.UI.Page
{
    protected string strEroror = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["adminUser"] != null)
        {
            Response.Redirect("adminQueries.aspx");
        }
        if (this.IsPostBack)
        {
            string adminName = Request.Form["adminName"];
            string password = Request.Form["adminPassword"];
            string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
            string xmlFilePath = this.MapPath("adminList.xml");
            DAL dal = new DAL(dbPath);
            UtilityManegers um = new UtilityManegers(xmlFilePath, dal);
            if (!um.Exist(adminName, password))
            {
                strEroror = "айрк ордм";
            }
            else
            {
                this.Session["adminUser"] = adminName;
                Response.Redirect("adminQueries.aspx");
            }
        }
    }
}
