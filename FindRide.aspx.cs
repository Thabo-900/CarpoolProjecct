using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projectx
{
    public partial class FindRide : System.Web.UI.Page
    {
        protected void btnSearch_Click(object sender, EventArgs e)
        {

            string from = txtSearchFrom.Text;
            string to = txtSearchTo.Text;

            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connStr))

            {
                string query = "SELECT * FROM Rides WHERE LeavingFrom = @From AND GoingTo = @To";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@From", from);
                cmd.Parameters.AddWithValue("@To", to);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    rptRides.DataSource = dt;
                    rptRides.DataBind();
                }
                else
                {
                
                    rptRides.DataSource = null;
                    rptRides.DataBind();
                    Response.Write("<script>alert('No rides found.');</script>");
                }
            }
        }

    }
}