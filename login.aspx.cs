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

public partial class login : System.Web.UI.Page
{
    protected string strEroror = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["userName"] != null)
        {
            Response.Redirect("userQueries.aspx");
        }
        if (this.IsPostBack)
        {
            string userName = Request.Form["userName"];
            string password = Request.Form["password"];
            string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
            DAL dal = new DAL(dbPath);
            UtilityUser uu = new UtilityUser(dal);
            if (!uu.Exist(userName, password))
            {
                strEroror = "אינך רשום";
            }
            else
            {
                this.Session["userName"] = userName;
                Response.Redirect("userQueries.aspx");
            }
        }
    }
}
