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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Application["counter"] == null)
        {
            Page.Application["counter"] = 0;
        }
        if (Page.Session["visittor"] == null)
        {
            Page.Session["visittor"] = true;
            Page.Application["counter"] = (int)Page.Application["counter"] + 1;
        }
    }
}
