using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageRentals.Data
{
    public class Customer
    {
        // Private fields
        private int customerId;
        private string firstName;
        private string lastName;
        private long phoneNumber;
        private string email;
        private bool banStatus;
        private string notes;
        
        // Properties
        public int CustomerId { get => customerId; set => customerId = value; }
        public string FirstName { get => firstName; set => firstName = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public long PhoneNumber { get => phoneNumber; set => phoneNumber = value; }
        public string Email { get => email; set => email = value; }
        public bool BanStatus { get => banStatus; set => banStatus = value; }
        public string Notes { get => notes; set => notes = value; }

        public Customer()
        {
            
        }

        public Customer(int customerId, string firstName, string lastName, long phoneNumber, string email, bool banStatus, string notes)
        {
            this.customerId = customerId;
            this.firstName = firstName;
            this.lastName = lastName;
            this.phoneNumber = phoneNumber;
            this.email = email;
            this.banStatus = banStatus;
            this.notes = notes;
        }
    }
}
