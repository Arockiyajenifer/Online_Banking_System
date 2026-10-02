using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Banking1
{
    public partial class AccountDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBalance();
            }
        }

        private void LoadBalance()
        {
            string cs = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query =
                    "SELECT Balance FROM Customers WHERE AccountNumber = @account";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@account", "1001035567");

                con.Open();

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    decimal balance = Convert.ToDecimal(result);

                    lblBalance.Text = "₹ " + balance.ToString("N2");
                }
            }
        }
    }
}