<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userQueries.aspx.cs" Inherits="userQueries" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
<script language="javascript" type="text/javascript">
        function check()
        {
            return true;
        }
    </script>
    <div align="center">
    
    <img src="Images/anyQueries.bmp" alt="�������" /><br />
    <table >
                <tr align="right">
                <td>
                    ����� �����
                    </td>
                    <td>                    
                        <input type=radio name=choise value="1" checked="checked">                        
                    </td>                    
                </tr>
                <tr align="right">
                <td>
                    ����� �� �����
                    </td>
                    <td>
                         <input type=radio name=choise value="2">                      
                    </td>
                <tr align="right" >
                <td>
                    ��������
                    </td>
                    <td>                      
                        <input type=radio name=choise value="3">
                    </td>                   
                </tr>
            </table>
            <br/>
            <input type="submit" value="���">
    </div>
</asp:Content>

