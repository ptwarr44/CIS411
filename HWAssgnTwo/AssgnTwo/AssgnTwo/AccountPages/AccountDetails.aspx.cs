using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssgnTwo.MyClasses;

namespace AssgnTwo.AccountPages
{
    public partial class AccountDetails : System.Web.UI.Page
    {
        private static double accountBalance; //holds value for current account balance

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["accountBalance"] = accountBalance;
            List<Account> allAccounts = (List<Account>)Session["AllAccounts"];
            Customer cust = (Customer)Session["customer"];

            if (PreviousPage != null)
            {
                string url = PreviousPage.ToString();

                if (url.Contains("summary"))
                {
                    updateBalance(); //update balance when details are listed

                    int selectedIndex = ((ListBox)PreviousPage.FindControl("AccountListBox")).SelectedIndex;
                    //Find the details of the account selected
                    Account selectedAccount = allAccounts[selectedIndex];

                    AccountNameLabel.Text = selectedAccount.Nickname;
                    Session["name"] = selectedAccount.Nickname;

                    AcctTypeLabel.Text = selectedAccount.Type;
                    Session["type"] = selectedAccount.Type;

                    BalanceLabel.Text = selectedAccount.Balance.ToString();

                    LoanLabel.Text = selectedAccount.hasLoanOffer().ToString();

                    AddressLabel.Text = cust.FullAddress;
                    Session["addr"] = cust.FullAddress;

                    accountBalance = selectedAccount.Balance;

                    if (accountBalance > 15000)
                    {
                        LoanLabel.Text = "True";
                        Session["loan"] = "True";
                    }
                    else
                    {
                        LoanLabel.Text = "False";
                        Session["loan"] = "False";
                    }
                }
                else if (url.Contains("loan")) //came from loan page
                {
                    LoanLabel.Text = "Came from loan";

                    double accountBalance = (double)(Session["accountBalance"]);
                    BalanceLabel.Text = accountBalance.ToString("C2");

                    string name = (String)(Session["name"]);
                    string type = (String)(Session["type"]);
                    string loan = (String)(Session["loan"]);
                    string addr = (String)(Session["addr"]);

                    AccountNameLabel.Text = name;
                    AcctTypeLabel.Text = type;
                    LoanLabel.Text = loan;
                    AddressLabel.Text = addr;
                }
                 // WithdrawMoneyBtn_Click(sender, e);
            }
        }

        protected void WithdrawMoneyBtn_Click(object sender, EventArgs e)
        {
            WithdrawErrorLabel.Text = "";

            double withdrawRequested;
            double.TryParse(WithdrawTextBox.Text, out withdrawRequested);

            if (withdrawRequested < accountBalance)
            {
                accountBalance -= withdrawRequested;
                WithdrawErrorLabel.Text = withdrawRequested.ToString("C2") + " withdrawn. Check new balance.";
                updateBalance();
            }
            else
            {
                WithdrawErrorLabel.Text = withdrawRequested.ToString("C2") + " requested. Please enter a value less than balance.";
            }
        }

        public void updateBalance()
        {
            Session["accountBalance"] = accountBalance;
            BalanceLabel.Text = accountBalance.ToString("C2");
        }

        protected void LoanBtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("./LoanApplicationPage.aspx");
        }
    }
}