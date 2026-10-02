using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Banking1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT COUNT(*) FROM Customers WHERE AccountNumber=@account AND Password=@password";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@account", txtAccount.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);

                con.Open();

                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Account Number or Password');</script>");
                }
            }
        }
    }
}