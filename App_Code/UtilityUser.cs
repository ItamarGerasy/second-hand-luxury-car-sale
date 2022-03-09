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
/// Summary description for UtilityUser
/// </summary>
public class UtilityUser
{
    private DAL dal;
    public UtilityUser(DAL dal)
    {
        this.dal = dal;
    }
    public bool Insert(string userName, string password, string firstName, string lastName, int birthYear, string phoneNum, string email, string gender)
    {
        string sqlStr = string.Format("INSERT INTO tblUsers (firstName, lastName, userName, password, birthYear, email, gender, phoneNum)values('{0}','{1}','{2}', '{3}',{4},'{5}','{6}','{7}')", firstName, lastName, userName, password, birthYear, email, gender, phoneNum);
        int rowsEffective=this.dal.ExecuteNonQuery(sqlStr);
        return (rowsEffective > 0);
    }
    public bool Exist(string userName)
    {
        string sqlStr = string.Format("SELECT userName FROM tblUsers WHERE (userName='{0}')", userName);
        if (this.dal.ExecuteScalar(sqlStr) == null)
        {
            return false;
        }
        return true;
    }
    public bool Exist(string userName, string password)
    {
        string sqlStr = string.Format("select userName from tblUsers WHERE (userName='{0}' and password='{1}')", userName, password);
        return (this.dal.ExecuteScalar(sqlStr) != null);
    }
    public string GetFirstName(string userName)
    {
        string sqlStr = string.Format("SELECT firstName FROM tblUsers WHERE (userName = '{0}')", userName);
        return this.dal.ExecuteScalar(sqlStr).ToString();
    }
    public bool ChangePassword(string userName, string newPassword)
    {
        string sqlStr = string.Format("update tblUsers set password='{0}' where userName='{1}'", newPassword, userName);
        return this.dal.ExecuteNonQuery(sqlStr) >0;
    }
    public bool ChangeUserName(string userName, string oldUserName)
    {
        string sqlStr = string.Format("update tblUsers SET username='{0}' where username='{1}'", userName, oldUserName);
        return this.dal.ExecuteNonQuery(sqlStr) > 0;
    }
}
