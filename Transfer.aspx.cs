using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Banking1
{
    public partial class Transfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnTransfer_Click(object sender, EventArgs e)
        {
            if (txtAccount.Text != txtConfirm.Text)
            {
                Response.Write("<script>alert('Account numbers do not match');</script>");
                return;
            }

            decimal amount = Convert.ToDecimal(txtAmount.Text);

            string cs = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                // Check available balance
                string balanceQuery =
                    "SELECT Balance FROM Customers WHERE AccountNumber = @account";

                SqlCommand balanceCmd =
                    new SqlCommand(balanceQuery, con);

                balanceCmd.Parameters.AddWithValue("@account", "1001035567");

                decimal balance =
                    Convert.ToDecimal(balanceCmd.ExecuteScalar());

                // Check sufficient balance
                if (amount > balance)
                {
                    Response.Write(
                        "<script>alert('Insufficient Balance. Available Balance: ₹"
                        + balance.ToString("0.00")
                        + "');</script>"
                    );

                    return;
                }

                // Deduct amount
                string updateQuery =
                    "UPDATE Customers SET Balance = Balance - @amount " +
                    "WHERE AccountNumber = @account";

                SqlCommand updateCmd =
                    new SqlCommand(updateQuery, con);

                updateCmd.Parameters.AddWithValue("@amount", amount);
                updateCmd.Parameters.AddWithValue("@account", "1001035567");

                updateCmd.ExecuteNonQuery();

                // Save transaction history
                string transactionQuery =
                    "INSERT INTO dbo.Transactions " +
                    "(AccountNumber, TransactionType, Amount) " +
                    "VALUES (@account, @type, @amount)";

                SqlCommand transactionCmd =
                    new SqlCommand(transactionQuery, con);

                transactionCmd.Parameters.AddWithValue("@account", "1001035567");
                transactionCmd.Parameters.AddWithValue("@type", "Transfer");
                transactionCmd.Parameters.AddWithValue("@amount", amount);

                transactionCmd.ExecuteNonQuery();
            }

            Response.Write(
                "<script>alert('Money transferred successfully');" +
                "window.location='Transaction.aspx';</script>"
            );
        }
    }
}