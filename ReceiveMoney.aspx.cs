using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Banking1
{
    public partial class ReceiveMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnReceive_Click(object sender, EventArgs e)
        {
            decimal amount;

            if (!decimal.TryParse(txtAmount.Text, out amount) || amount <= 0)
            {
                Response.Write("<script>alert('Enter a valid amount');</script>");
                return;
            }

            string cs = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                // Add received amount to your account
                string updateQuery =
                    "UPDATE Customers SET Balance = Balance + @amount " +
                    "WHERE AccountNumber = @account";

                SqlCommand updateCmd =
                    new SqlCommand(updateQuery, con);

                updateCmd.Parameters.AddWithValue("@amount", amount);
                updateCmd.Parameters.AddWithValue("@account", "1001035567");

                int rows = updateCmd.ExecuteNonQuery();

                if (rows == 0)
                {
                    Response.Write("<script>alert('Your account was not found');</script>");
                    return;
                }

                // Save received money as Credit transaction
                string transactionQuery =
                    "INSERT INTO dbo.Transactions " +
                    "(AccountNumber, TransactionType, Amount) " +
                    "VALUES (@account, @type, @amount)";

                SqlCommand transactionCmd =
                    new SqlCommand(transactionQuery, con);

                transactionCmd.Parameters.AddWithValue("@account", "1001035567");
                transactionCmd.Parameters.AddWithValue("@type", "Money Received");
                transactionCmd.Parameters.AddWithValue("@amount", amount);

                transactionCmd.ExecuteNonQuery();
            }

            Response.Write(
                "<script>alert('Money received successfully');" +
                "window.location='Default.aspx';</script>"
            );
        }
    }
}