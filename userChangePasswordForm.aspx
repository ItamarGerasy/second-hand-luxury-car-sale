<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userChangePasswordForm.aspx.cs" Inherits="userChangePasswordForm" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
 <script language="javascript" type="text/javascript">
   var iderror1="נא הכנס סיסמא";
   var iderror2="נא הכנס אימות סיסמא";
   var iderror3="הסיסמא ואימות הסיסמא אינן תואמות";

function check()
{
    var strNewPassword=document.getElementById("newPassword").getAttribute("value");
    if(strNewPassword == null)
    {
        alert(iderror1);
        return false;
    }
    var strImot=document.getElementById("imot").getAttribute("value");
    if(strImot == null)
    {
        alert(iderror2);
        return false;
    }
    if(strNewPassword != strImot)
    {
        alert(iderror3);
        return false;
    }
    return true;
}


</script>

    <div>
    <center>
 <h1><font face="arial">שינוי סיסמה</font></h1>

 <table  border="0" align="center">
      <tr>                             
       <th><p align="right">הקש סיסמא חדשה</p></th>
       <td><input type="password" name="newPassword" id="newPassword"></td>
     </tr>
     <tr>                             
      <th><p align=right>הקש אימות סיסמא חדשה</p></th>
      <td><input type="password" name="imot" id="imot"></td>
     </tr>
     <tr>
      <td><p align=center><input type="submit" name="x" value="אישור">
      <input type="reset" name="x" value="מחק"></td> 
     </tr>
  </table>
  <%
      Response.Write(Application["strEroror"]);
  %> 
<br/>
 <a href="userQueries.aspx">חזרה לשאילתות</a>
 
  
  </center>
    </div>
</asp:Content>

