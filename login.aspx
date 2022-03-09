<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
<script>
var error1="אנא הכנס שם משתמש";
var error2="אנא הכנס סיסמא";
function check()
{
    var strUserName=document.getElementById("userName").getAttribute("value")
    if(strUserName==null)
    {
        alert(error1);
        return false;
    }
    var strPassword=document.getElementById("password").getAttribute("value");
    if(strPassword==null)
    {
        alert(error2);
        return false;
    }
    
}



</script>




<h1 align="center">התחברות</h1><br />
<h3 align="center"><%Response.Write(strEroror); %></h3>
<table>
        <tr>
            <td height="10%" align="left" style="width: 3%">שם משתמש:
            </td>
            <td height="10%" style="width: 3%" align="right"><input type="text" size="16" id="userName" name="userName" />
            </td>
        </tr>
        <tr>
              <td height="10%" align="left" style="width: 3%">סיסמא:
            </td>
            <td height="10%" style="width: 3%" align="right"><input type="password" size="16" id="password" name="password" />
            </td>
        </tr>
        <tr>
            <td height="10%" align="left" style="width: 3%"> <input type="reset" value="נקה"/>
            </td>
            <td height="10%" style="width: 3%" align="right"><input type="submit" value="שלח" />
            </td>   
        </tr>
</table>
        <div align="center"> עדיין לא רשום?<br />
        <a href="register.aspx">להרשמה</a>
        </div>
</asp:Content>

