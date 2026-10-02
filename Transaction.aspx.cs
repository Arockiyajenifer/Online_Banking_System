using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Online_Banking1
{
    public partial class Transaction : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTransactions();
            }
        }

        private void LoadTransactions()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;

            string query = @"
                SELECT 
                    TransactionID,
                    CASE
                        WHEN TransactionType = 'Transfer' THEN 'Debit'
                        WHEN TransactionType = 'Credit' THEN 'Credit'
                        WHEN TransactionType = 'Money Received' THEN 'Credit'
                        ELSE TransactionType
                    END AS TransactionType,
                    Amount,
                    TransactionDate
                FROM dbo.Transactions
                WHERE AccountNumber = @account
                ORDER BY TransactionDate DESC";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@account", "1001035567");

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                gvTransactions.DataSource = dt;

                gvTransactions.DataBind();
            }
        }
    }
}