<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
                Aptitude Testing Web Site
                <br />        
                <br />
            </div>

<%--            <div id="divSignUp">
            <a href="SignUp.aspx">Sign Up</a>
            </div> 

            <div id="divSignIn">
            <a href="SignIn.aspx">Sign IN</a>
            </div> --%>

            <div id="menu">
                <ul>
                </ul>
            </div>
        </div>

        <br />
        <br />
        <div id="content">

            <div id="area1">
                <h4>REGISTER </h4>
              
                <asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>

                <asp:TextBox ID="FNameTB" runat="server" Height="21px" Width="139px"></asp:TextBox>
              <br /><br />
                <asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label> <br />

                <asp:TextBox ID="LNameTB" runat="server" Height="21px" Width="139px"></asp:TextBox>
                <br /><br />
                 <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label> <br />

                <asp:TextBox ID="EmailTB" runat="server" Height="21px" Width="139px"></asp:TextBox>
                 <br /><br />
                 <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label> <br />

                <asp:TextBox ID="PasswordTB" runat="server" Height="21px" Width="139px" TextMode = "Password"></asp:TextBox>
                <br /><br />
                 <asp:Label ID="lblCPassword" runat="server" Text="Confirm Password:"></asp:Label> <br />

                <asp:TextBox ID="CPasswordTB" runat="server" Height="21px" Width="139px" TextMode = "Password"></asp:TextBox>
                 <br /><br />

                <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" Width="70px" />

                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Turn Back to"></asp:Label>
                <br />
                <br />

                <asp:Button ID="RegisterButton0" runat="server" Text="Log in" OnClick="LogInButton_Click" Height="23px" Width="70px" />

            </div>
            <div id ="area 2">
                <br />
                <br />
                <br />            
                Before Seeing Category, Subjects and Question, Please register this WebSite.
                <br />
                <br />
                <br />
                <br />  
                <br />
                 <asp:Label ID="lblResult" runat="server" Text=""></asp:Label> 
                <br />
                <br />
                <br />    
                <br />
                <br />
                <br />    
                <br />
                <br />
                <br />  
                <br />
                <br />
                <br />    
                <br />
                <br />
                <br />    
                <br />
                <br />
                <br />  
                <br />  
            </div>

        </div>

        <div id="footer">
            COPYRIGHT ALI TOSUNER &amp; MERT KAPLAN</div>
    </form>
</body>
</html>
