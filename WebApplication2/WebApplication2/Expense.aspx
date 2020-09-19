<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expense.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <link rel="stylesheet" type="text/css" href="Design.css">
    


 



</head>
<body class ="back"  >
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

               
     <div class="mid" style="top: 11%;">
         &nbsp;&nbsp;&nbsp;&nbsp;
         <br />
&nbsp;&nbsp;&nbsp;
         <span style="color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 19.5px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
         
         <a href="Overview.aspx" >Blog</a>

         <br />
         </span>
         <br/>

         <div class="scroll" 
             style="line-height: 1.6; right: 204px; font-family : Verdana; color:#3B383B;">

             Expense <br/>
             <br />
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width ="100px" 
                 style="font-weight: 700">
             </asp:DropDownList>
&nbsp;paid for something.<br />
&nbsp;<br />
&nbsp;How much?
             <br />
&nbsp;<asp:Label ID="Label2" class="border" runat="server" Text="&amp;nbsp; $ " Height ="30px" 
                 style="border:none; background-color :#AE81D6" Width="30px"></asp:Label>
             <asp:TextBox ID="TextBox1" class="border" runat="server" Width="361px" Height ="30px" style="font-size :medium ; border-radius : 4px;" placeholder="Amount in Dollars"></asp:TextBox>
             
             









             
             
             
             
             <br />
             &nbsp;<asp:RequiredFieldValidator 
                 ID="RequiredFieldValidator1" runat="server" 
                 ControlToValidate="TextBox1" ErrorMessage="can't be blank" 
                 ForeColor="White" BackColor="Red"></asp:RequiredFieldValidator>
             &nbsp;
             <asp:RangeValidator ID="RangeValidator1" runat="server" BackColor="Red" 
                 ControlToValidate="TextBox1" ErrorMessage="is invalid" ForeColor="White" 
                 MaximumValue="999999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
             <br />
&nbsp;<a ga-event-action="upgrade from entry new multi currency" ga-event-category="UI" 
                 ga-on="click" 
                 href="https://www.kittysplit.com/trip/VApH7LowmafGROAATBKk_TAag-aXnlvs-2/upgrade" 
                 style="box-sizing: border-box;  color: rgb(163, 105, 171); text-decoration: none; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 19.5px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" 
                 target="_blank">To use multiple currencies, upgrade this kitty.</a><br />
             <br />
             &nbsp;
             <asp:RadioButton ID="RadioButton1" runat="server" 
                 Text="Split equally between everyone" GroupName="selection" 
                  />
             <br />
&nbsp;
<asp:RadioButton ID="RadioButton2" runat="server" 
                 Text="Split differently" GroupName="selection"  
                  />
             <br />
             <br />
             
             &nbsp; What for?<br/>  &nbsp;  <asp:TextBox ID="TextBox2" class="border" runat="server" Width="370px " Height ="30px" style="font-size :medium ; border-radius : 4px;" placeholder=" Ski Pass"></asp:TextBox>
             <br />
&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ControlToValidate="TextBox2" ErrorMessage="can't be blank" 
                 ForeColor="White" BackColor="Red"></asp:RequiredFieldValidator>
             <br />
             <br />
&nbsp;
             <asp:Button ID="Button2" class="border" runat="server" Text="Add" 
                 Width="67px" style="text-align:center; cursor:pointer ;  border-radius : 4px; background-color:#E285EE;" 
                 ForeColor="White" Height="30px" OnClientClick=”btnClick();” onclick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" class="border" style="cursor:pointer ; border-radius : 4px;" 
                 runat="server" Text="Cancel"  Height ="30px"
                 Width="70px" onclick="Button3_Click" />
         </div>

         <div class="right" style="top:15%; color:#3B383B; ">
         <h3 style="color:#342F34 ;">Some ideas


             
             <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;paid for the rental car<br />
             <br />
             <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;got some supplies from the supermarket.

         </div>


         
     <div class="foot" >
      © 2020 Kittysplit.com  
    

    </div>
    <div class="foot" style="text-align : right; right:2%; height: 21px;"; title="blog"  >
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


     </div>

    <br/><br/>
    
    </form>
</body>
</html>
