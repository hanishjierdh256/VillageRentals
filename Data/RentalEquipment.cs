using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageRentals.Data
{
    public class RentalEquipment
    {
        // Private fields
        private int rentalNumber;
        private int equipmentId;
        private DateTime rentalDate;
        private DateTime returnDate;
        private float equipmentCost;

        public int RentalNumber { get => rentalNumber; set => rentalNumber = value; }
        public int EquipmentId { get => equipmentId; set => equipmentId = value; }
        public DateTime RentalDate { get => rentalDate; set => rentalDate = value; }
        public DateTime ReturnDate { get => returnDate; set => returnDate = value; }
        public float EquipmentCost { get => equipmentCost; set => equipmentCost = value; }

        public RentalEquipment()
        {
            
        }

        public RentalEquipment(int rentalNumber, int equipmentId, DateTime rentalDate, DateTime returnDate, float equipmentCost)
        {
            this.rentalNumber = rentalNumber;
            this.equipmentId = equipmentId;
            this.rentalDate = rentalDate;
            this.returnDate = returnDate;
            this.equipmentCost = equipmentCost;
        }
    }
}
