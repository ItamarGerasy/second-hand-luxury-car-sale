<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminQueries.aspx.cs" Inherits="adminQueries" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div  align=center>
    <br/><br/>
<img src="Images/anyQueries.bmp" />
    <table >
        <tr>
            <td><input type=radio name=choise value=1 ></td><td align="right">שינוי סיסמה</td>
        </tr>
         <tr>   
            <td><input type=radio name=choise value=2></td><td align="right">שינוי שם מנהל</td>    
         </tr>       
        <tr> 
        <td><input type=radio name=choise value=3 checked="checked"></td><td align="right">התנתקות</td>
        </tr>
        <tr> 
            <td><input type=radio name=choise value=4 ></td><td align="right">חיפוש משתמשים לפי נתוני קלט</td>
        </tr>  
        <tr> 
            <td><input type=radio name=choise value=5 ></td><td align="right">רשימת משתמשים רשומים, מחיקת משתמש</td>
        </tr>       
        <tr> 
            <td><input type=radio name=choise value=6 ></td><td align="right">רשימת מנהלים</td>
        </tr>
</table>
<br/><br/><br/>
<input type=submit value="שלח">

    </div>
    </form>
</body>
</html>
