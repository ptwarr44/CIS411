using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HWAssgnOne
{
    public partial class HA1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //Loads all values in BooksDropDown on load.
            if (!IsPostBack)
            {
                BooksDropDown.Items.Add("");
                BooksDropDown.Items.Add("Introduction to MIS");
                BooksDropDown.Items.Add("Introduction to Marketing");
                BooksDropDown.Items.Add("Introduction to Finance");
            }
        }

        protected void PurchaseBtn_Click(object sender, EventArgs e)
        {
            BookLabel.ForeColor = System.Drawing.Color.Black; //Color is black unless changed

            //Price of books
            double misPrice = 20;
            double mktPrice = 30;
            double finPrice = 40;

            if (double.TryParse(QtyTextBox.Text, out double quantity))
            {
                    if (BooksDropDown.SelectedIndex == 1)
                    {
                        BookLabel.Text = "Purchase " + quantity + 
                            " of Introduction to MIS? Price is " + (quantity * misPrice).ToString("C");
                        Dispose();
                    }
                    else if (BooksDropDown.SelectedIndex == 2)
                    {
                        BookLabel.Text = "Purchase " + quantity + 
                            " of Introduction to Marketing? Price is " + (quantity * mktPrice).ToString("C");
                        Dispose();
                    }
                    else if (BooksDropDown.SelectedIndex == 3)
                    {
                        BookLabel.Text = "Purchase " + quantity + 
                            " of Introduction to Finance? Price is " + (quantity * finPrice).ToString("C");
                        Dispose();
                    }
            }
        }
    }
}