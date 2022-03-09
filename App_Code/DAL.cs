using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for DAL
/// </summary>
public class DAL
{
	
	private string dbPath;
    public DAL(string dbPath)
    {
        this.dbPath = dbPath;
    }   
    private string ConnectionString()
    {       
       return string.Format(@"Data Source=.\SQLEXPRESS;AttachDbFilename={0};Integrated Security=True;User Instance=True", this.dbPath);        
    }
    public Object ExecuteScalar(string strSql)
    {
        SqlConnection connection = new SqlConnection(this.ConnectionString());
        SqlCommand command = new SqlCommand(strSql, connection);
        connection.Open();
        Object obj = command.ExecuteScalar();
        connection.Close();
        return obj;
    }
    public DataSet GetDataSet(string strSql)
    {
        DataSet ds = new  DataSet();
        SqlConnection connection = new SqlConnection(this.ConnectionString());
        SqlCommand command = new SqlCommand(strSql, connection);
        SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
        dataAdapter.Fill(ds);
        return ds;
    }
    public int ExecuteNonQuery(string strSql)
    {
        int rowsAffected;
        SqlConnection connection = new SqlConnection(this.ConnectionString());
        SqlCommand command = new SqlCommand(strSql, connection);
        connection.Open();
        rowsAffected = command.ExecuteNonQuery();
        connection.Close();
        return rowsAffected;
    }      
}
