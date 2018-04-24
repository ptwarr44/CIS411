using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssgnTwo.MyClasses;

namespace AssgnTwo.AccountPages
{
    public partial class LoanApplicationPage : System.Web.UI.Page
    {
        private static double preservedBalance;

        protected void Page_Load(object sender, EventArgs e)
        {
            double accountBalance = (double)(Session["accountBalance"]);
            preservedBalance = accountBalance;

            if (PreviousPage != null)
            {
                Customer cust = (Customer)Session["customer"];
                NameLabel.Text = cust.FullName;
            }
        }

        protected void SubmitLoanBtn_Click(object sender, EventArgs e)
        {
            if (approvalStatus())
            {
                LoanApprovalLabel.Text = "Congratulations!! Your loan is approved.";
            }
            else
            {
                LoanApprovalLabel.Text = "Your loan is not approved. Sorry!!";
            }
        }

        public Boolean approvalStatus()
        {
            double salary;
            double.TryParse(SalaryTextBox.Text, out salary);
            double age;
            double.TryParse(AgeTextBox.Text, out age);
            double amount;
            double.TryParse(LoanTextBox.Text, out amount);

            double loanFormula = 0.5 * salary;

            if (age > 18 && amount < preservedBalance && amount < loanFormula)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}