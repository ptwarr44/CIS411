using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AssgnTwo.MyClasses
{
    public class Account
    {
        private String _type;
        private double _balance;
        private String _nickname;
        public String Type
        {
            get
            {
                return _type;
            }

            set
            {
                _type = value;
            }
        }

        public Double Balance
        {
            get
            {
                return _balance;
            }

            set
            {
                _balance = value;
            }
        }

        public String Nickname
        {
            get
            {
                return _nickname;
            }
            
            set
            {
                _nickname = value;
            }
        }

        public Boolean hasLoanOffer()
        {
            if (Balance < 15000)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}