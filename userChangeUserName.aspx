<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userChangeUserName.aspx.cs" Inherits="changeu" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
 <script language="javascript" type="text/javascript">
   var iderror1="�� ���� �� �����";
   var iderror2="��� ����� ������ �� �� ������ ���� ������";

function check() 
{  
    var strNewUsername=document.getElementById("username").getAttribute("value");
    
    if (strNewUsername==null)
    {
        window.alert(iderror1); 
        return false;       
    }
    var strImot=document.getElementById("username2").getAttribute("value");
    if (strNewUsername != strImot)
    {
        window.alert(iderror2);
        return false;
    }
    return true;
}

</script>
<% Response.Write(strEroror); %>
<table>
    <tr>
        <td>�� ����� ���</td>
        <td><input type="text" name="username" id="username" /></td>
    </tr>
    <tr>
        <td>����� �� ����� ���</td>
        <td><input type="text" name="username2" id="username2" /></td>
    </tr>
    <tr>
        <td></td>
        <td> <input type="submit" value="����" /> </td>
    </tr>
</table>

<a href="userQueries.aspx">���� ��������</a>   
</asp:Content>