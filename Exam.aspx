<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">

            <asp:GridView runat="server" ID="grdExam" Width="550px"
                AutoGenerateColumns="False" Font-Names="Arial"
                Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B"
                HeaderStyle-BackColor="RED" AllowPaging="True" DataKeyNames="QuestionID" OnRowDataBound="grdExam_RowDataBound"
                ShowFooter="True" BackColor="White" BorderColor="#999999"
                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Questions">
                        <ItemTemplate>
                            <asp:Label ID="lblSubject" runat="server"
                                Text='<%# Eval("QDescription")%>' OnClick="lblSubject_Click"></asp:Label>
                            <asp:GridView ID="grdOptions" runat="server" Width="550px"
                                AutoGenerateColumns="False" Font-Names="Arial"
                                Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="True"
                                DataKeyNames="OptionID">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" Font-Bold="true" ID="lbOption" OnClick="lbOption_Click" Text='<%# Eval("OptionName")%>' CommandName='<%# Eval("QuestionID")%>' CommandArgument='<%# Eval("OptionID")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="OptionDescription" />
                                </Columns>

                            </asp:GridView>

                            <br />
                            <br />
                        </ItemTemplate>


                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#CCCCCC" />

                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White"></HeaderStyle>
                <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

            <br />
            <asp:Button runat="server" ID="finishExam" Text="Sınavı Bitir" OnClick="finishExam_Click" />
            <br />
        </div>
    </form>
</body>
</html>
