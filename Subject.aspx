<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Subject" %>

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
                Subjects:
            </div>

            <div id="area2">
                <div align="center">

                    <asp:GridView runat="server" ID="grdSubjects" Width="562px"
                        AutoGenerateColumns="False" Font-Names="Arial"
                        Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B"
                        HeaderStyle-BackColor="RED" AllowPaging="True" ShowFooter="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="357px">
                        <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                        <Columns>
                            <asp:TemplateField ItemStyle-Width="30px" HeaderText="Subject Name">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbSubject" runat="server"
                                        Text='<%# Eval("SubjectName")%>' CommandArgument='<%# Eval("SubjectID")%>' OnClick="lbSubject_Click"></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle Width="30px"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="30px" HeaderText="Number of Question">
                                <ItemTemplate>
                                    <asp:Label runat="server"
                                        Text='<%# Eval("QuestionNumber")%>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="30px"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />

                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>
                        <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </div>
            </div>

        </div>
        <div id="footer">
            COPYRIGHT ALI TOSUNER &amp; MERT KAPLAN
        </div>
    </form>
</body>
</html>

