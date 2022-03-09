<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminChangePasswordForm.aspx.cs" Inherits="adminChangePasswordForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<script language="javascript" type="text/javascript" >
   var error1="נא הכנס סיסמא";
   var error2="נא הכנס אימות סיסמא";
   var error3="הסיסמא ואימות הסיסמא אינן תואמות";




function Check() 
{  

   var strNewPassword=document.getElementById("newPassword").getAttribute("value");
   if(strNewPassword==null)
   {
        alert(error1);
        return false;
   }
   var strImot=document.getElementById("imot").getAttribute("value");
   if(strImot==null)
   {
        alert(error2)
        return false;
   }
   if(strNewPassword != strImot)
   {
        alert(error3);
        return false;
   }
   return true;
}


</script>
<body dir="rtl">
    <form id="form1" runat="server" onsubmit="return Check()">
<div align="center">
     <h1><font face="arial">שינוי סיסמת מנהל</font></h1>

     <table  border=0 align=center>
          <tr>                             
               <td><p align=right>
                   הקש סיסמא חדשה:</p></td>
               <td><input type=password name=newPassword id="newPassword"></td>
         </tr>
         <tr>                             
              <td><p align=right>הקש אימות סיסמא חדשה:</p></td>
              <td><input type=password name=imot id="imot"></td>
         </tr>
         <tr>
              <td align="left"><input type=submit name=x value=אישור></td>
              <td align="right"><input type=reset name=x value=מחק></td> 
         </tr>
      </table>
      <%
        Response.Write(strEroror);
      %> 
    <br/>
     <a href="adminQueries.aspx" >חזרה לשאילתות</a>
 </div>
    </form>
</body>
</html>
