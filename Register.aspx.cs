using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Banking1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO Customers (FullName, AccountNumber, Mobile, Password) VALUES (@name, @account, @mobile, @password)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@account", txtAccount.Text);
                cmd.Parameters.AddWithValue("@mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("Login.aspx");
        }
    }
}