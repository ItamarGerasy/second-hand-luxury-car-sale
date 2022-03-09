<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminChangeNameForm.aspx.cs" Inherits="adminChangeNameForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script>
var error1="אנא הכנס שם משתמש חדש";
var error2="אנא הכנס אימות שם משתמש חדש";
var error3="השם משתמש החדש והאימות אינם תואמים";

function Check()
{
    var strNewName=document.getElementById("newName").getAttribute("value");
    if(strNewName==null)
    {
        alert(error1);
        return false;
    }
    var strImot=document.getElementById("imot").getAttribute("value");
    if(strImot==null)
    {
        alert(error2);
        return false;
    }
    if(strNewName!=strImot)
    {
        alert(error3);
        return false;
    }
    return true;
}

</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body dir="rtl">
    <form id="form1" runat="server" onsubmit="return Check()">
        <div align="center">
            <h1 style="font-family:Guttman Yad-Brush">שינוי שם מנהל</h1>
            <table>
                <tr>
                    <td align="left">שם מנהל חדש:</td>
                    <td><input type="text" size="16" name="newName" id="newName"/></td>
                </tr>
                <tr>
                    <td align="left">אימות שם מנהל חדש:</td>
                    <td><input type="text" size="16" name="imot" id="imot"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="אישור"/></td>
                </tr>
            </table>
            <h2><%Response.Write(strError); %></h2><br /><br />
            <a href="adminQueries.aspx">חזרה לשאילתות מנהל</a>
        </div>
    </form>
</body>
</html>
