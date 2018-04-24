<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HA1.aspx.cs" Inherits="HWAssgnOne.HA1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 316px;
        }
        .auto-style3 {
            width: 316px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            width: 316px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 98px;
        }
        .auto-style8 {
            height: 30px;
            width: 98px;
        }
        .auto-style9 {
            height: 23px;
            width: 98px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Book Purchase Website</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:DropDownList ID="BooksDropDown" runat="server" AutoPostBack="True" Width="179px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="QtyLabel" runat="server" Text="Add Quantity"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="QtyTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style9"></td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="PurchaseBtn" runat="server" OnClick="PurchaseBtn_Click" Text="Purchase" Width="250px" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="BookLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:RequiredFieldValidator ID="QtyRequiredValidator" runat="server" ControlToValidate="QtyTextBox" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" Display="Dynamic">Quantity is required, as a number in the range of 1 to 10.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style6">
                        <asp:RangeValidator ID="QtyRangeValidator" runat="server" ControlToValidate="QtyTextBox" ErrorMessage="RangeValidator" MaximumValue="10" MinimumValue="1" SetFocusOnError="True" Display="Dynamic">The quantity should be in the range of 1 to 10</asp:RangeValidator>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
