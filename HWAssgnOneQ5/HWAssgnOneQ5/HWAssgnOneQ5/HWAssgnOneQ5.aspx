<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HWAssgnOneQ5.aspx.cs" Inherits="HWAssgnOneQ5.HWAssgnOneQ5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 304px;
        }
        .auto-style3 {
            width: 151px;
        }
        .auto-style4 {
            width: 304px;
            height: 22px;
        }
        .auto-style5 {
            width: 151px;
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            width: 304px;
            height: 26px;
        }
        .auto-style8 {
            width: 151px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Bank Account Details</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="WARequiredFieldValidator1" runat="server" ControlToValidate="WABox" ErrorMessage="An amount is required!" ForeColor="Red" OnUnload="Page_Load"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:DropDownList ID="AccountDropDown" runat="server" AutoPostBack="True" Width="219px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">Withdrawal Amount:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="WABox" runat="server" Width="176px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:RangeValidator ID="WARangeValidator" runat="server" ControlToValidate="WABox" ErrorMessage="Amount should be greater than 0!" ForeColor="Red" MaximumValue="100000000" MinimumValue="0" OnUnload="Page_Load" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="WithdrawBtn" runat="server" OnClick="WithdrawBtn_Click" Text="Withdraw" Width="194px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="WithdrawLabel" runat="server" Text="Withdraw Account" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="BoALink" runat="server" NavigateUrl="http://www.bankofamerica.com" Target="_blank">For bank details, click here.</asp:HyperLink>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
