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

public partial class register : System.Web.UI.Page
{
    protected string strError = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(this.IsPostBack==true)
        {
            string userName = Request.Form["userName"];
            string password = Request.Form["password"];
            string firstName = Request.Form["firstName"];
            string lastName = Request.Form["lastName"];
            int birthYear = int.Parse(Request.Form["birthYear"]);
            string phoneNum = Request.Form["phoneNum"];
            string email = Request.Form["email"];
            string gender = Request.Form["gender"];
            string dbPath = this.MapPath("App_Data/siteDatabase.mdf");
            DAL dal = new DAL(dbPath);
            UtilityUser uu = new UtilityUser(dal);
            if (uu.Exist(userName))
            {
                strError = "כנראה ששם המשתמש כבר תפוס";
            }
            else
            {
                uu.Insert(userName, password, firstName, lastName, birthYear, phoneNum, email, gender);
                strError="נרשמת בהצלחה";
            }
        }
    }
}
