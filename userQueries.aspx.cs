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

public partial class userQueries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["userName"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        string userName = this.Session["userName"].ToString();
        if (!this.IsPostBack)//
        {
            string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
            DAL dal = new DAL(dbPath);
            UtilityUser uu = new UtilityUser(dal);
            string firstName = uu.GetFirstName(userName);
        }
        else
        {
            int intChoise = int.Parse(Request.Form["choise"].ToString());
            if (intChoise == 1)
            {
                Response.Redirect("userChangePasswordForm.aspx");
            }
            if (intChoise == 2)
            {
                Response.Redirect("userChangeUserName.aspx");
            }
            if (intChoise == 3)
            {
                this.Session["userName"] = null;
                Response.Redirect("Default.aspx");
            }
        }
    }
}
