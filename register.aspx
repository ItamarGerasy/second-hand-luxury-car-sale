<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server" >
<script type="text/javascript" language="javascript">
var error1 = "��� ��� �� �����";
var error2 = "�� ����� ���� ����� ���� �4 ������";
var error3 = "���� ���� ����� ���� ������";
var error4 = "��� ��� �����";
var error5 = "����� ����� ����� ����� �4 ������";
var error6 = "����� ����� ���� ����";
var error7 = "�� ���� ���� ���� ����� ������ �� �����";
var error8 = "��� ��� �� ����";
var error9 = "�� ����� ���� ���� ����� ������ �� �����";
var error10 = "��� ��� �� �����";
var error11 = "��� ��� ��� ����";
var error12 = "��� ���� �� �����";
var error13 = "��� ��� ���� ������";
var error14 = "���� ������ ���� ����� ����� ����";
var error15 = "���� ������ ���� ����� 10 ������";
var error16 = "��� ��� ����� ������";
var error17 = "����� ������ ���� �����";
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
<h1><u>�����</u></h1> <br />
<table>
    <tr>
        <td>�� �����</td>
        <td><input type="text" size="16" maxlength="30" id="userName" name="userName"/></td>
    </tr>
    <tr>
        <td>�����</td>
        <td><input type="password" size="16" maxlength="30" id="password" name="password"/></td>
    </tr>
    <tr>
        <td>��� ����� ���</td>
        <td><input type="password" size="16" maxlength="30" id="imot" /></td>
    </tr>
    <tr>       
         <td>�� ����</td>
         <td><input type="text" size="16" maxlength="30" id="firstName" name="firstName"/></td>
    </tr>
    <tr>        
         <td>�� �����</td>
         <td><input type="text" size="16" maxlength="30" id="lastName" name="lastName"/></td>
    </tr>
  <tr>        
         <td>��� ����</td>
         <td><input type="text" size="16" maxlength="4" id="birthYear" name="birthYear"/></td>
   </tr>
    <tr>         
         <td>���� ������</td>
         <td><input type="text" size="16" maxlength="10" id="phoneNum" name="phoneNum"/></td>
    </tr>
    <tr>       
         <td>������</td>
         <td><input type="text" size="16" maxlength="30" id="email" name="email"/></td>
    </tr>
    <tr>  
        <td>���</td>
        <td><input type="radio" name="gender" value="male" checked=checked /> ��� &nbsp&nbsp <input type="radio" name="gender" value="female" checked=checked />����</td>
    <tr>
        <td colspan="2" align="center">
             <input type="submit"   value="���"  />
             <input type="reset"  value="���"/>
        </td>
    </tr>
</table>
<h6>
    <%
        Response.Write(strError);
     %>
     </h6>
</asp:Content>

