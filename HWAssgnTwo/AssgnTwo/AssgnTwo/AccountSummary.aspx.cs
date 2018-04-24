using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssgnTwo.MyClasses;

namespace AssgnTwo
{
    public partial class AccountSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //Create objects and set them in session
            new GenerateSessionObjects();

            //Retrieve the objects from session
            List<Account> acctList = (List<Account>)Session["AllAccounts"];
            Customer cust = (Customer)Session["customer"];

            //Populate label and listbox
            NameLabel.Text = "Welcome " + cust.FullName;

            foreach(Account acct in acctList)
            {
                AccountListBox.Items.Add(acct.Nickname);
            }
        }

        protected void DetailsBtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("./AccountPages/AccountDetails.aspx");
        }
    }
}