using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projectx
{
    public partial class OfferRide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string from = txtFrom.Text;
            string to = txtTo.Text;
            DateTime date;
            if (!DateTime.TryParse(txtDate.Text, out date))
            {
                Response.Write("<script>alert('Invalid date!');</script>");
                return;
            }
            int seats = int.Parse(txtSeats.Text);
            decimal price = decimal.Parse(txtPrice.Text);

            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connStr))

            {
                string query = "INSERT INTO Rides (LeavingFrom, GoingTo, RideDate, AvailableSeat, Price) VALUES (@From, @To, @Date, @Seats, @Price)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@From", from);
                cmd.Parameters.AddWithValue("@To", to);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@Seats", seats);
                cmd.Parameters.AddWithValue("@Price", price);

                con.Open();
                cmd.ExecuteNonQuery();
            }
            Response.Write("<script>alert('Ride Offered Successfully!');</script>");
}

        protected void btnOffer_Click(object sender, EventArgs e)
        {

        }
    }
}
