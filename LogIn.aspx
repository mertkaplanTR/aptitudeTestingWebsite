<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CSE5001 Web Programming Home Page</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">

            <div id="banner">
                 <div id="divUser">
                     <asp:Label ID="LabelLoggedIn" runat="server"></asp:Label>
           
            </div> 
                Aptitude Testing WebSite
                <br />
                <br />
            </div>

            <div id="menu">
            </div>
        </div>

        <br />
        <br />
        <div id="content">

            <div id="area1">

                <h4>LOGIN AREA </h4>
               <div style="width: 185px">
                   &nbsp;<asp:Label ID="Label1" runat="server" Text="E-Mail:"></asp:Label>
&nbsp;<a href="#" onclick="nextImg();"><asp:TextBox ID="TextBoxUser" runat="server" style="margin-left: 0px" Width="103px"></asp:TextBox>
                   </a>
                   <br />
&nbsp;&nbsp;
                   <br />
                   <asp:Label ID="Label2" runat="server" Text="Pass:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" style="margin-left: 19px" Width="103px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Button ID="LoginButon" runat="server"  Text="Login" OnClick="LoginButon_Click" />
&nbsp;&nbsp;&nbsp;
                   <br />
                   <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
               </div>
                <h4>&nbsp;<asp:HyperLink ID="RegisterHyperLink" runat="server" ForeColor="Black" NavigateUrl="~/Register.aspx" OnDataBinding="RegisterHyperLink_DataBinding">Register</asp:HyperLink>
                </h4>
            </div>

            <div id ="area2" >
                 <br />
                <br />
                In this Website, Users who have registered or logged in have a aptitude testing. 
                First,they choose the category and with that category,they choose subcategory. 
                And then they start the exams according to subject which they'v choosen. 
                Finally, system will record that options Users give.


            </div>

        </div>
      

        <div id="footer">
            COPYRIGHT ALI TOSUNER &amp; MERT KAPLAN</div>
    </form>
</body>
</html>
