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

public partial class adminQueries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["adminUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (this.IsPostBack)
        {
            int intChoise = int.Parse(Request.Form["choise"].ToString());
            if (intChoise == 1)
            {
                Response.Redirect("adminChangePasswordForm.aspx");
            }
            if (intChoise == 2)
            {
                Response.Redirect("adminChangeNameForm.aspx");
            }
            if (intChoise == 3)
            {
                this.Session["adminUser"] = null;
                Response.Redirect("Default.aspx");
            }
            if (intChoise == 4)
            {
                Response.Redirect("advencedSelect.aspx");
            }
            if (intChoise == 5)
            {
                Response.Redirect("adminUserList.aspx");
            }
            if (intChoise == 6)
            {
                Response.Redirect("adminsList.aspx");
            }
        }
    }
}
