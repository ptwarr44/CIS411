<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="AssgnTwo.AccountPages.AccountDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account Details</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 269px;
        }
        .auto-style3 {
            width: 269px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 199px;
        }
        .auto-style6 {
            width: 199px;
            height: 23px;
        }
        .auto-style7 {
            width: 143px;
        }
        .auto-style8 {
            height: 23px;
            width: 143px;
        }
        .auto-style9 {
            width: 109px;
        }
        .auto-style10 {
            height: 23px;
            width: 109px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Account Name:</td>
                <td class="auto-style5">
                    <asp:Label ID="AccountNameLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Account Type:</td>
                <td class="auto-style5">
                    <asp:Label ID="AcctTypeLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Account Balance:</td>
                <td class="auto-style6">
                    <asp:Label ID="BalanceLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="WithdrawTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="WithdrawMoneyBtn" runat="server" OnClick="WithdrawMoneyBtn_Click" Text="Withdraw Money" Width="122px" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="WithdrawErrorLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Eligible For Loan:</td>
                <td class="auto-style5">
                    <asp:Label ID="LoanLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="LoanBtn" runat="server" OnClick="LoanBtn_Click" Text="Want a Loan?" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address Provided:</td>
                <td class="auto-style5">
                    <asp:Label ID="AddressLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
