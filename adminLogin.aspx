<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="adminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script>
    var error1="��� ���� �� �����";
    var error2="��� ���� �����";
    
    function Check()
    {
        var strAdminName=document.getElementById("adminName").getAttribute("value");
        if(strAdminName==null)
        {
            alert(error1);
            return false;
        }
        var strPassword=document.getElementById("adminPassword").getAttribute("value");
        if(strPassword==null)
        {
            alert(error2);
            return false;
        }
        return true;
    }

</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server" dir="rtl" onsubmit="return Check()">
       <div align="center"> <h1><u>����� �������</u></h1></div><br />
        <table align="center">
            <tr>
                <td align="left">�� �����:</td>
                <td align=right><input type="text" maxlength="25" size="16" name="adminName" id="adminName"/></td>
            </tr>
            <tr>
                <td align="left">�����:</td>
                <td align="right"><input type="password" size="16" maxlength="25" name="adminPassword" id="adminPassword"/></td>
            </tr>
            <tr>
                <td colspan="2" align=center><input type="submit" value="�����"/></td>
            </tr>
        </table>
        <h2 align="center"><%Response.Write(strEroror); %></h2>
    </form>
</body>
</html>
