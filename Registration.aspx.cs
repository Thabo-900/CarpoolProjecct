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
    public partial class Register : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)

        {

            string username = TextBox1.Text;
            string email = TextBox2.Text;
            string password = TextBox3.Text;
            string mobile = TextBox4.Text;


            string gender = RadioButton1.Checked ? "Male" : (RadioButton2.Checked ? "Female" : "");


            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;


            {

            }           using (SqlConnection con = new SqlConnection(connStr))
                try
                {
                    {
                string query = "INSERT INTO Users (Username,Email, Password, Mobile, Gender) VALUES (@Username,@Email, @Password, @Mobile, @Gender)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Mobile", mobile);
                cmd.Parameters.AddWithValue("@Gender", gender);

                con.Open();
                        int result = cmd.ExecuteNonQuery();

                        if (result > 0)
                        {
                            Response.Write("<script>alert('Registration Successful! Redirecting to Login...'); window.location='Login1d.aspx';</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Registration failed. Try again.');</script>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message.Replace("'", "\\'") + "');</script>");
                }
        }


     
    }
    }








