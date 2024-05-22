<%@ Page Language="C#" AutoEventWireup="true" CodeFile="etudiant.aspx.cs" Inherits="etudiant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="244px" Width="615px">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Prenom"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="160px">
                                <asp:ListItem>homme</asp:ListItem>
                                <asp:ListItem>femme</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Photo"></asp:Label>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="73px" Width="119px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Valider" />
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" Text="Button" />
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" 
            OnRowCancelingEdit="GridView1_RowCancelingEdit"  
            OnRowEditing="GridView1_RowEditing" 
            OnRowDeleting="GridView1_RowDeleting"
            OnRowUpdating="GridView1_RowUpdating"
            CellPadding="4" ForeColor="#333333" GridLines="None"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:ImageField DataImageUrlField="photo" ConvertEmptyStringToNull="False" DataImageUrlFormatString="images\{0}">
                    <ControlStyle Height="80px" Width="80px" />
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
