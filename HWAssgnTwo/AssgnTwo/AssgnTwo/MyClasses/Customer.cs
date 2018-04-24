using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AssgnTwo.MyClasses
{
    public class Customer
    {
        private String _fullAddress;
        private String _fullName;

        public Customer(String name, String add)
        {
            _fullName = name;
            _fullAddress = add;
        }

        public String FullAddress
        {
            get
            {
                return _fullAddress;
            }
        }

        public String FullName
        {
            get
            {
                return _fullName;
            }
        }
    }
}