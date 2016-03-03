<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExamResult.aspx.cs" Inherits="ExamResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CSE5001 Web Programming Home Page</title>
    <link href="Style.css" rel="stylesheet" />
    </head>
<body>
    <form id="form2" runat="server">
        <div id="header">

            <div id="banner">
                <div id="divUser">
                    <asp:Label ID="LabelLoggedIn" runat="server"></asp:Label>
                </div>
               - CEVAPLAR - 
                <br />
                
                <br />
                
            </div>

            <div id="menu">
                <ul>
                    <li><a href="LogIn.aspx">Home</a></li>
                </ul>
            </div>
        </div>

        <br />
        <br />
        <div id="content">

            <div id="area1">
                Exam Result:
            </div>

            <div id="area2">
                <div align="center">
                    <asp:Label ID="Label1" runat="server" Text="DisplayResultStatement"></asp:Label>
&nbsp;<asp:Label ID="lbUser" runat="server" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
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

        </div>
        <div id="footer">
            COPYRIGHT ALI TOSUNER &amp; MERT KAPLAN
        </div>
    </form>
</body>
</html>

