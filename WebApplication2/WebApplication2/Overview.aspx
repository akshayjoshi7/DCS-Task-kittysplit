<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Overview.aspx.cs" Inherits="WebApplication2.Overview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" type="text/css" href="Design.css" >

    

    <title></title>
    </head>
<body class="back">
    <form id="form1" runat="server">
     <div style="text-align:center ">
    
        <div style="background-color:#182F56;">
        <br />
            <asp:ImageButton class="left " ID="ImageButton1" runat="server" 
                
                ImageUrl="~/Images/logo.PNG" />
            
            &nbsp;<br />
            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="White"></asp:Label>
            <br />
            <br />
            </div>
            <select class="box" style="font-size: medium; top: 34px; cursor :pointer ;  ">
                <option>More</option>
                <option>Share</option>
                <option>Help</option>
                <option>Blog</option>
            </select>
          </div>

          <div class="mid" style="font-family:Verdana ; position :absolute ; top : 11%;">
              <br />
              <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;You are  
          
              <asp:DropDownList ID="DropDownList1" runat="server"  style="padding : 10px;
        width : 80px; font-size : 20 px;top: 34px; cursor :pointer; border-radius: 4px ; ">
              </asp:DropDownList>
          
              <br />
              <br />
              <br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Overview 
    
        <asp:Button ID="Button1" runat="server" class="border" 
                  style="position :absolute ; border-radius: 4px; right:10%; cursor :pointer ; " Text="Add Expense" 
                  BackColor="#AE81D6" ForeColor="White" Height="33px" />
            
              <br />
              
              <br />
              <br />
              
              <div style="left:6%; right:10%; position : absolute; background-color:#DFE4EC; top: 173px; height: 199px;">

                  <br />

                  &nbsp;This event cost the group:<asp:Label ID="Label2" runat="server"  style="position:absolute; right:2%;"  class="amount" Text="Label"></asp:Label>
                  <br />
                  <br />
                  &nbsp;It cost you:<asp:Label ID="Label3" runat="server" class="amount" style="position:absolute; right:2%;" Text="Label"></asp:Label>
                  <br />
                  <br />
                  &nbsp;You&#39;ve paid:<asp:Label ID="Label4" runat="server" class="amount" style="position:absolute; right:2%;"  Text="Label"></asp:Label>
                  <br />
                  <br />
                  &nbsp;You owe:<asp:Label ID="Label5" runat="server" class="amount" style="position:absolute; right:2%;"  Text="23"></asp:Label>

              </div>

              <br />
&nbsp;
          
          </div>
    </form>
</body>
</html>
