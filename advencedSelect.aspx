<%@ Page Language="C#" AutoEventWireup="true" CodeFile="advencedSelect.aspx.cs" Inherits="advencedSelect" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head id="Head1" runat="server" >
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
 <h1><font face="arial">בחירת משתמשים לפי שנת לידה ומגדר</font></h1>

 <table  border=2 align=center>
      <tr>                             
       <th align="right">בחר שנת לידה</th>
       <td>
            <select name="birthYear">
                <option value="1988">1988</option>
                <option value="1989">1989</option>
                <option value="1990" selected=selected>1990</option>
                <option value="1991">1991</option>
                <option value="1992">1992</option>
                <option value="1993">1993</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2001</option>
                <option value="2000">2002</option>
                <option value="2000">2003</option>
                <option value="2000">2004</option>
                <option value="2000">2005</option>
                <option value="2000">2006</option>
                
            </select>
       </td>
     </tr>
     <tr>                             
      <th align="right">בחר מגדר</th>
      <td>
      <input type="radio" name="gender" value="male" checked="checked"/>&nbsp;&nbsp;זכר 
        <br />
        <input type="radio" name="gender" value="female"  />נקבה
      
      </td>
     </tr>
     <tr>
      <td colspan="2">
        <input type=submit name=x value=אישור>
      </td> 
     </tr>
  </table>
  <%
    Response.Write(strTable);
  %> 
<br/>
 <a href="adminQueries.aspx">חזרה לשאילתות</a></center>
        <center>
        </center>
    </div>
    </form>
</body>
</html>
