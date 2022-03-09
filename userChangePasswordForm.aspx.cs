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

public partial class userChangePasswordForm : System.Web.UI.Page
{
    protected string strEroror = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["userName"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (this.IsPostBack)
        {
            string newPassword = Request.Form["newPassword"];
            string userName = Session["userName"].ToString();
            string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
            DAL dal = new DAL(dbPath);
            UtilityUser uu = new UtilityUser(dal);
            if (uu.ChangePassword(userName, newPassword))
            {
                strEroror ="הססמא עודכנה";
            }
            else
            {
                strEroror ="הססמא לא עודכנה";
            }
        }
    }
}
