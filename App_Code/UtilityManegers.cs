using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for UtilityManegers
/// </summary>
public class UtilityManegers
{
    private DAL dal;
    private string xmlFilePath;
    public UtilityManegers(string xmlFilePath, DAL dal)
	{
        this.dal = dal;
        this.xmlFilePath = xmlFilePath;
	}
    public bool Exist(string adminName)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(this.xmlFilePath);
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            if(adminName==row["adminName"].ToString())
            {
                return true;
            }
        }
        return false;
    }
    public bool Exist(string adminName,string password)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(this.xmlFilePath);
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            if ((adminName == row["adminName"].ToString()) && (password == row["password"].ToString()))
            {
                return true;
            }
        }
        return false;
    }
    public DataSet GetUsers()
    {
        string sqlStr = "select * from tblUsers";
        return this.dal.GetDataSet(sqlStr);
    }
    public DataSet GetUsersByBirthyearAndGenger(int birthYear, string gender)
    {
        string sqlStr = string.Format("SELECT * FROM tblUsers WHERE (gender = '{0}') AND (birthYear = {1})",gender,birthYear);
        return this.dal.GetDataSet(sqlStr);
    }
    public bool DeleteUser(string userName)
    {
        string strSql = string.Format("delete from tblUsers where userName='{0}'", userName);
        return this.dal.ExecuteNonQuery(strSql) > 0;
    }
    public DataSet GetAdmins()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(this.xmlFilePath);      
        return ds;
    }
    public bool ChangePassword(string adminName, string newPassword)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(this.xmlFilePath);
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            if (adminName == row["adminName"].ToString())
            {
                row["password"] = newPassword;
            }
        }
        try
        {
            ds.WriteXml(this.xmlFilePath);
            return true;
        }
        catch
        {
            return false;
        }
    }
    public bool ChangeName(string adminName, string newAdminName)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(this.xmlFilePath);
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            if (adminName == row["adminName"].ToString())
            {
                row["adminName"] = newAdminName;
            }
        }
        try
        {
            ds.WriteXml(this.xmlFilePath);
            return true;
        }
        catch
        {
            return false;
        }
    }
    public DataSet GetUsersByBirthyearFromTo(int birthYearFrom, int birthYearTo)
    {
        string sqlStr = string.Format("SELECT * FROM tblUsers WHERE (birthYear >= '{0}') AND (birthYear <= {1})", birthYearFrom, birthYearTo);
        return this.dal.GetDataSet(sqlStr);
    }
}
