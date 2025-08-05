using System;
using System.Data;
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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAvailableRides();
            }
        }

        private void LoadAvailableRides()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT LeavingFrom, GoingTo, RideDate, AvailableSeat, Price FROM Rides";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                rptRides.DataSource = dt;
                rptRides.DataBind();
            }
        }

        protected void btnFindRide_Click(object sender, EventArgs e)
        {
            Response.Redirect("FindRide.aspx");
        }

        protected void btnOfferRide_Click(object sender, EventArgs e)
        {
            Response.Redirect("OfferRide.aspx");
        }
    }
}

