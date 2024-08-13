using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageRentals.Data
{
    public class Rental
    {
        private int rentalNumber;
        private int customerId;
        private DateTime bookingDate;
        private float totalRentalCost;

        public int RentalNumber { get => rentalNumber; set => rentalNumber = value; }
        public int CustomerId { get => customerId; set => customerId = value; }
        public DateTime BookingDate { get => bookingDate; set => bookingDate = value; }
        public float TotalRentalCost { get => totalRentalCost; set => totalRentalCost = value; }

        public Rental()
        {
            
        }

        public Rental(int rentalNumber, int customerId, DateTime bookingDate, float totalRentalCost)
        {
            this.rentalNumber = rentalNumber;
            this.customerId = customerId;
            this.bookingDate = bookingDate;
            this.totalRentalCost = totalRentalCost;
        }
    }
}
