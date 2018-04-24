<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoanApplicationPage.aspx.cs" Inherits="AssgnTwo.AccountPages.LoanApplicationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 176px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Salary</td>
                    <td>
                        <asp:TextBox ID="SalaryTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Age</td>
                    <td>
                        <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Loan Amount</td>
                    <td>
                        <asp:TextBox ID="LoanTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="SubmitLoanBtn" runat="server" OnClick="SubmitLoanBtn_Click" Text="Submit" Width="114px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LoanApprovalLabel" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="AccountSummaryBtn" runat="server"  PostBackUrl="~/AccountSummary.aspx" Text="Go to Account Summary" Width="157px" />
                    </td>
                    <td>
                        <asp:Button ID="AccountDetailsBtn" runat="server" PostBackUrl="~/AccountPages/AccountDetails.aspx" Text="Go To Account Details" Width="145px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
