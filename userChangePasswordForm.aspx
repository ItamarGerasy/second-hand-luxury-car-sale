<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userChangePasswordForm.aspx.cs" Inherits="userChangePasswordForm" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
 <script language="javascript" type="text/javascript">
   var iderror1="�� ���� �����";
   var iderror2="�� ���� ����� �����";
   var iderror3="������ ������ ������ ���� ������";

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
 <h1><font face="arial">����� �����</font></h1>

 <table  border="0" align="center">
      <tr>                             
       <th><p align="right">��� ����� ����</p></th>
       <td><input type="password" name="newPassword" id="newPassword"></td>
     </tr>
     <tr>                             
      <th><p align=right>��� ����� ����� ����</p></th>
      <td><input type="password" name="imot" id="imot"></td>
     </tr>
     <tr>
      <td><p align=center><input type="submit" name="x" value="�����">
      <input type="reset" name="x" value="���"></td> 
     </tr>
  </table>
  <%
      Response.Write(Application["strEroror"]);
  %> 
<br/>
 <a href="userQueries.aspx">���� ��������</a>
 
  
  </center>
    </div>
</asp:Content>

