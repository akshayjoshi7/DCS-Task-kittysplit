<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" type="text/css" href="Design.css">

    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: Verdana;
        }
        .style2
        {
            position: absolute;
            bottom : -4%;
            left: 0px;
            font-family: Verdana;
            font-size : smaller;
            color : Gray;
        }
        .style3
        {
            position : absolute;
            width : 280px;
            right: 3%;
            font-family: Verdana;
        }
        .style4
        {
            position: absolute;
            bottom : -4%;
            left: 0px;
            font-family: Verdana;
            font-size : smaller;
            color : Gray;
            text-align: right;
            right: 2%;
            height: 21px;
        }
    </style>
</head>
<body class ="back" >
    <form id="form1" runat="server">
    
    
    
    
        <div style="background-color:#182F56;">
        <br />
            <asp:ImageButton class="left " ID="ImageButton1" runat="server" 
                
                ImageUrl="~/Images/logo.PNG" />
            
            <select class="box" style="font-size: medium; top: 34px; cursor :pointer ;  ">
                <option>More</option>
                <option>Share</option>
                <option>Help</option>
                <option>Blog</option>
            </select>

            <br />
            <br />
            <br />
            </div>

         
     <div class="mid" style="top:11%;">
        
            <br class="style1"/>
         <h2 class="style1" 
             
                style="box-sizing: border-box; font-weight: 300; line-height: 3rem; color: rgb(68, 68, 68); margin-top: 2rem !important; margin-bottom: 2rem !important; font-size: 2rem; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; margin-left: 40px;">
             Create a new Kitty</h2>
                 <div class="scroll" >

                     <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label1" runat="server" Text="Event Name"></asp:Label>
                     <br />
                     <br />
&nbsp;&nbsp;&nbsp;
                     </span>
                     <asp:TextBox class="border"  ID="TextBox1" runat="server" 
                         placeholder=" Ski Trip" Width="352px" Height="29px" ></asp:TextBox>
                     <span class="style1">
                     <br />
                     &nbsp;&nbsp;&nbsp;
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                         BackColor="Red" ControlToValidate="TextBox1" ErrorMessage="can't ne empty" 
                         ForeColor="White"></asp:RequiredFieldValidator>
                     <br />
                     <br />
&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label2" runat="server" Text="Currency"></asp:Label>
                     &nbsp;(Only USD allowed)<br />
                     <br />
&nbsp;&nbsp;&nbsp;
                     </span>
                     <asp:TextBox ID="TextBox2" class="border" runat="server" ReadOnly="True" 
                         Width="352px" Height="29px">USD</asp:TextBox>

                     <span class="style1">

                     <br />
                     <br />

                     <hr size="1" width="90%" color="gray">  


&nbsp;&nbsp;&nbsp;
                     

                Participants
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
&nbsp;&nbsp;&nbsp; You<br />
                
&nbsp;&nbsp;&nbsp;
                     </span>
                     <asp:TextBox ID="TextBox3" class="border" runat="server" 
                         placeholder=" Your Name" Width="352px" Height="29px"></asp:TextBox>
                     <br class="style1" />
                     <span class="style1">&nbsp;&nbsp;&nbsp;
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         BackColor="Red" ControlToValidate="TextBox3" ErrorMessage="can't ne empty" 
                         ForeColor="White"></asp:RequiredFieldValidator>
                     <br />
                     <br />
&nbsp;&nbsp;&nbsp;
                     </span>
                     <asp:TextBox ID="TextBox4" class="border" runat="server" 
                         placeholder=" Your email (recommended)" Width="352px" 
                         Height="29px"></asp:TextBox>
                     <span class="style1">
                     <br />
                     &nbsp;&nbsp;&nbsp;
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         BackColor="Red" ControlToValidate="TextBox4" ErrorMessage="can't ne empty" 
                         ForeColor="White"></asp:RequiredFieldValidator>
&nbsp;
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                         BackColor="Red" ControlToValidate="TextBox4" ErrorMessage="has invalid format" 
                         ForeColor="White" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     <br />
                     <br />
&nbsp;&nbsp;&nbsp; Person 2<br />
&nbsp;&nbsp;&nbsp;
                     </span>
                     <asp:TextBox ID="TextBox5" class="border" runat="server" placeholder=" Name" 
                         Width="352px"  Height="29px"></asp:TextBox>
                     <span class="style1">
                     <br />
                     &nbsp;&nbsp;&nbsp;
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         BackColor="Red" ControlToValidate="TextBox5" ErrorMessage="can't ne empty" 
                         ForeColor="White"></asp:RequiredFieldValidator>
                     <br />
&nbsp;&nbsp;&nbsp;
                     <br />

                     <hr size="1" width="90%" color="gray">  


                     <br />
&nbsp;&nbsp;&nbsp;
                     </span>
                     <asp:Button ID="Button2" class ="border" style="cursor:pointer ; border-radius : 4px; " 
                         runat="server" BackColor="#AE81D6" Height="33px" 
                         Text="Create kitty" Width="92px" ForeColor="White" 
                         onclick="Button2_Click" />
                     <span class="style1">
                     <br />
                
                      <br />
                
                     </span>
                
                </div>
                
             


                <div class="right " style="top: 22%; right:3%;">
                <br/>
                Everyone in your flat share lost track of who paid what and when this month.
                <div>
        
            

        </div>

    </div>
  
            <h3 class="style3" 
                style="box-sizing: border-box; font-weight: 400; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 1rem; font-size: 1.5rem; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                Good examples for creating a kitty</h3>
  
 
    <div>
    </div>
    
    
    <div class="style2" >
      © 2020 Kittysplit.com  
    

    </div>
    <div class="style4" ; title="blog"  >
   <a href="https://blog.kittysplit.com/" >Blog</a>
   &nbsp; &nbsp;&nbsp;
   <a href="https://www.kittysplit.com/en/about">About</a>
   &nbsp; &nbsp;&nbsp;
   <a href="https://www.kittysplit.com/en/privacy-policy">Privacy Policy</a>
   &nbsp;&nbsp; |  &nbsp;&nbsp;
   Follow us&nbsp;
        <asp:ImageButton ID="ImageButton5" runat="server" Height="18px" 
            ImageUrl="~/Images/Twitter-logo-on-transparent-background-PNG.png" 
            PostBackUrl="https://twitter.com/kittysplit" Width="18px" />
        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton6" runat="server" Height="18px" 
            ImageUrl="~/Images/png-transparent-social-media-facebook-logo-hashtag-facebook-blue-text-photography.png" 
            PostBackUrl="https://www.facebook.com/kittysplit" Width="18px" />
        &nbsp;
    &nbsp;</div>

            <span class="style1">

    <br/><br/>
    
            </span>
    
    </form>
</body>
</html>
