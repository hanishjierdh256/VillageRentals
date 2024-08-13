namespace VillageRentals
{
    public partial class App : Application
    {
        public static string DATABASESTRING = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Village_Rentals;Integrated Security=True";

        public App()
        {
            InitializeComponent();

            MainPage = new MainPage();
        }
    }

}
