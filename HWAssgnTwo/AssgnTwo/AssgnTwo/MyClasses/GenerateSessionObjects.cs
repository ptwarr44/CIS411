using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AssgnTwo.MyClasses
{
    public class GenerateSessionObjects
    {
        List<Account> allAccounts = new List<Account>();

        public GenerateSessionObjects()
        {
            Account act1 = new Account();
            act1.Type = "Checking";
            act1.Balance = 30123.45;
            act1.Nickname = "My chk1";

            Account act2 = new Account();
            act2.Type = "Checking";
            act2.Balance = 20123.45;
            act2.Nickname = "My chk2";

            Account act3 = new Account();
            act3.Type = "Savings";
            act3.Balance = 22675.98;
            act3.Nickname = "My sav1";

            allAccounts.Add(act1);
            allAccounts.Add(act2);
            allAccounts.Add(act3);

            //Customer Object
            Customer cust1 = new Customer("Daniel Bert", "1234 Louisville Lane, Louisville");

            //Add to session
            HttpContext.Current.Session["customer"] = cust1;
            HttpContext.Current.Session["AllAccounts"] = allAccounts;
        }
    }
}