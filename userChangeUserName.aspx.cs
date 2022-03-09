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

public partial class changeu : System.Web.UI.Page
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
            string newusername = Request.Form["username"];
            string username = this.Session["userName"].ToString();
            string dbPath = this.MapPath("App_Data/SiteDatabase.mdf");
            DAL dal = new DAL(dbPath);
            UtilityUser uu = new UtilityUser(dal);
            if (!uu.Exist(username))
            {
                strEroror = "שם המשתמש כבר תפוס";
            }
            else
            {
                if (uu.ChangeUserName(newusername, username))
                {
                    strEroror = "הוחלף בהצלחה !";
                    this.Session["userName"] = newusername;
                }
            }
        }
    }
}
