using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HWAssgnOneQ5
{
    public partial class HWAssgnOneQ5 : System.Web.UI.Page
    {
        private decimal savings = 30345.90m; //Initial Savings Amount
        private decimal checking = 40785.22m; //Initial Checking Amount
        private decimal student = 5643.23m; //Initial Student Account

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; //Allows page to load

            if (!IsPostBack)
            {
                AccountDropDown.Items.Add(""); //None
                AccountDropDown.Items.Add("Savings Account"); //Savings Account
                AccountDropDown.Items.Add("Checking Account"); //Checking Account
                AccountDropDown.Items.Add("Student Account"); //Student Account
            }
        }

        protected void WithdrawBtn_Click(object sender, EventArgs e)
        {
            if (Decimal.TryParse(WABox.Text, out decimal result))
            {
                if (AccountDropDown.SelectedIndex == 1 && result > savings)
                {
                    WithdrawLabel.Text = "Withdraw amount is greater than the balance which is " + savings.ToString("C2");
                    Dispose();
                }
                else if (AccountDropDown.SelectedIndex == 2 && result > checking)
                {
                    WithdrawLabel.Text = "Withdraw amount is greater than the balanace which is " + checking.ToString("C2");
                    Dispose();
                }
                else if (AccountDropDown.SelectedIndex == 3 && result > student)
                {
                    WithdrawLabel.Text = "Withdraw amount is greater than the balance which is " + student.ToString("C2");
                    Dispose();
                }
                else if (AccountDropDown.SelectedIndex == 1 && result <= savings)
                {
                    WithdrawLabel.Text = "Withdraw Successful! Your new balance is " + savings.ToString("C2");
                    Dispose();
                }
                else if (AccountDropDown.SelectedIndex == 2 && result <= checking)
                {
                    checking = checking - result;
                    WithdrawLabel.Text = "Withdraw Successful! Your new balance is " + checking.ToString("C2");
                    Dispose();
                }
                else if (AccountDropDown.SelectedIndex == 3 && result <= student)
                {
                    student = student - result;
                    WithdrawLabel.Text = "Withdraw Successful! Your new balance is " + student.ToString("C2");
                    Dispose();
                }
                else
                {
                    WARangeValidator.Visible = false;
                    WARequiredFieldValidator1.Visible = false;
                }
            }
        }
    }
}