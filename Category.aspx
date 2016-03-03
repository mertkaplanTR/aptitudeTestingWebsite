<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category.aspx.cs"
    Inherits="Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Programming EndTerm Project</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
        <div id="header">

            <div id="banner">
                <div id="divUser">
                    <asp:Label ID="LabelLoggedIn" runat="server"></asp:Label>

                </div>
               Aptitude Testing Web Site
              
            </div>

            <div id="menu">
                <ul>
                </ul>
            </div>
        </div>

        <br />
        <br />
        <div id="content">

            <div id="area1">

                <h4>Base Categories:</h4>
                <br />
                <asp:DropDownList runat="server" AutoPostBack=" True" ID="ddlBaseCategories" OnSelectedIndexChanged="ddlBaseCategories_SelectedIndexChanged" />
                <br />
            </div>

            <div id="area2">
                Sub Categories : 
            <br />
                <asp:GridView runat="server" ID="grdSubCategories" Width="550px"
                    AutoGenerateColumns="False" Font-Names="Arial"
                    Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B"
                    HeaderStyle-BackColor="RED" AllowPaging="True" ShowFooter="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                    <Columns>

                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="Category Name">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbCategory" runat="server"
                                    Text='<%# Eval("CategoryName")%>' CommandArgument='<%# Eval("CategoryID")%>' OnClick="lbCategory_Click"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle Width="30px"></ItemStyle>
                            <ItemStyle Height="50px"></ItemStyle>
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
        <div id="footer">
            COPYRIGHT ALI TOSUNER &amp; MERT KAPLAN
        </div>
    </form>
</body>
</html>

