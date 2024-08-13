using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageRentals.Data
{
    public class Equipment
    {
        // Private fields
        private int equipmentId;
        private int category;
        private string name;
        private string description;
        private double dailyRentalCost;
        private string availabilityStatus;
        private bool sellability;
        private double? sellPrice;

        // Properties
        public int EquipmentId { get => equipmentId; set => equipmentId = value; }
        public int Category { get => category; set => category = value; }
        public string Name { get => name; set => name = value; }
        public string Description { get => description; set => description = value; }
        public double DailyRentalCost { get => dailyRentalCost; set => dailyRentalCost = value; }
        public string AvailabilityStatus { get => availabilityStatus; set => availabilityStatus = value; }
        public bool Sellability { get => sellability; set => sellability = value; }
        public double? SellPrice { get => sellPrice; set => sellPrice = value; }

        public Equipment()
        {
            
        }

        // Constructor
        public Equipment(int equipmentId, int category, string name, string description, double dailyRentalCost, string availabilityStatus, bool sellability, double? sellPrice)
        {
            this.equipmentId = equipmentId;
            this.category = category;
            this.name = name;
            this.description = description;
            this.dailyRentalCost = dailyRentalCost;
            this.availabilityStatus = availabilityStatus;
            this.sellability = sellability;
            this.sellPrice = sellPrice;
        }
    }
}
