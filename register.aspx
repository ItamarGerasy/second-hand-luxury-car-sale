<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server" >
<script type="text/javascript" language="javascript">
var error1 = "אנא הקש שם משתמש";
var error2 = "שם משתמש צריך להיות ארוך מ4 אותיות";
var error3 = "אסור שבשם משתמש יהיו סימנים";
var error4 = "אנא הקש סיסמא";
var error5 = "סיסמא צריכה להיות ארוכה מ4 אותיות";
var error6 = "אימות סיסמא אינו נכון";
var error7 = "שם פרטי אינו יכול להכיל מספרים או תווים";
var error8 = "אנא הקש שם פרטי";
var error9 = "שם משפחה אינו יכול להכיל מספרים או תווים";
var error10 = "אנא הקש שם משפחה";
var error11 = "אנא הקש שנת לידה";
var error12 = "שנת לידה לא תקינה";
var error13 = "אנא הקש מספר פלאפון";
var error14 = "מספר פלאפון חייב להכיל ספרות בלבד";
var error15 = "מספר פלאפון חייב להכיל 10 מספרים";
var error16 = "אנא הקש כתובת אימייל";
var error17 = "כתובת אימייל אינה תקינה";
var notAllawedChars = "!@#$%^&*()-+=";

function check()
{
    
    var strUserName=document.getElementById("userName").getAttribute("value");
    if(strUserName==null)
    {
        alert(error1);
        return false;
    }
    if(strUserName.length<4)
    {
        alert(error2);
        return false;
    }
    for(var i=0;i<strUserName.length;i++)
    {
        var ot = strUserName.charAt(i);
        for(var j=0;j<notAllawedChars.length;j++)
        {
            if(ot == notAllawedChars.charAt(i))
            {
                alert(error3);
                return false;
            }
        }
    }
    var strPassword=document.getElementById("password").getAttribute("value");
    if(strPassword==null)
    {
        alert(error4);
        return false;
    }
    if(strPassword.length<4)
    {
        alert(error5);
        return false;
    }
    var imot=document.getElementById("imot").getAttribute("value");
    if(strPassword!=imot)
    {
        alert(error6);
        return false;
    }
    var strFirstName=document.getElementById("firstName").getAttribute("value");
    if(strFirstName==null)
    {
        alert(error8);
        return false;
    }
    for(i=0;i<notAllawedChars.length;i++)
    {
        var ot=notAllawedChars.charAt(i);
        {
            if(strFirstName.indexOf(ot)!=-1)
            {
                alert(error7);
                return false;
            }
        }
    }
    for(i=0;i<strFirstName.length;i++)
    {
        if((strFirstName.charAt(i)<='9')&&(strFirstName.charAt(i)>='0'))
        {
            alert(error7);
            return false;
        }
    }
    var strLastName=document.getElementById("lastName").getAttribute("value");
    if(strLastName==null)
    {
        alert(error10);
        return false;
    }
    for(i=0;i<notAllawedChars.length;i++)
    {
        ot=notAllawedChars(i);
        if(strLastName.indexOf(ot)!=-1)
        {
            alert(error9);
            return false;
        }
    }
    for(i=0;i<strLastName.length;i++)
    {
        if((strLastName.charAt(i)<='9')&&(strLastName.charAt(i)>='0'))
        {
            alert(error7);
            return false;
        }
    }
    var birthYear=document.getElementById("birthYear").getAttribute("value");
    if(birthYear==null)
    {
        alert(error11);
        return false;
    }
    if(birthYear>2011|| birthYear<1000)
    {
        alert(error12)
        return false;
    }
    for(var i=0;i<birthYear.length;i++)
    {
        if(birthYear.charAt(i)>9||birthYear.charAt(i)<0)
        {
            alert(error12);
            return false;
        }
    }
    alert(birthYear);
    var strCellPhone=document.getElementById("phoneNum").getAttribute("value");
    if(strCellPhone==null)
    {
        alert(error13);
        return false;
    }
    for(i=0;i<strCellPhone.length;i++)
    {
        if(strCellPhone.charAt(i)>'9'||strCellPhone.charAt(i)<'0')
        {
            alert(error14);
            return false;
        }
    }
    if(strCellPhone.length!=10)
    {
        alert(error15);
        return false;
    }
    var strEmail=document.getElementById("email").getAttribute("value");
    if(strEmail==null)
    {
        alert(error16);
        return false;
    }
    if(strEmail.indexOf("@")==-1||strEmail.indexOf(".")==-1)
    {
        alert(error17);
        return false;
    }
    var counter=0;
    for(i=strEmail.indexOf("@");i<strEmail.length;i++)
    {
        if(strEmail.charAt(i)=='.')
        {
            counter++;
        }
    }
    if(counter==0)
    {
        alert(error17);
        return false;
    }
    return true;
}
</script>
<h1><u>הרשמה</u></h1> <br />
<table>
    <tr>
        <td>שם משתמש</td>
        <td><input type="text" size="16" maxlength="30" id="userName" name="userName"/></td>
    </tr>
    <tr>
        <td>סיסמא</td>
        <td><input type="password" size="16" maxlength="30" id="password" name="password"/></td>
    </tr>
    <tr>
        <td>הקש סיסמא שוב</td>
        <td><input type="password" size="16" maxlength="30" id="imot" /></td>
    </tr>
    <tr>       
         <td>שם פרטי</td>
         <td><input type="text" size="16" maxlength="30" id="firstName" name="firstName"/></td>
    </tr>
    <tr>        
         <td>שם משפחה</td>
         <td><input type="text" size="16" maxlength="30" id="lastName" name="lastName"/></td>
    </tr>
  <tr>        
         <td>שנת לידה</td>
         <td><input type="text" size="16" maxlength="4" id="birthYear" name="birthYear"/></td>
   </tr>
    <tr>         
         <td>מספר פלאפון</td>
         <td><input type="text" size="16" maxlength="10" id="phoneNum" name="phoneNum"/></td>
    </tr>
    <tr>       
         <td>אימייל</td>
         <td><input type="text" size="16" maxlength="30" id="email" name="email"/></td>
    </tr>
    <tr>  
        <td>מין</td>
        <td><input type="radio" name="gender" value="male" checked=checked /> זכר &nbsp&nbsp <input type="radio" name="gender" value="female" checked=checked />נקבה</td>
    <tr>
        <td colspan="2" align="center">
             <input type="submit"   value="שלח"  />
             <input type="reset"  value="נקה"/>
        </td>
    </tr>
</table>
<h6>
    <%
        Response.Write(strError);
     %>
     </h6>
</asp:Content>

