using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace login
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];

            if (cookie != null)
            {
                Session["currentuser"] = cookie["username"];
                Response.Redirect("User_details.aspx");
            }
        }

        protected void loginid_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("SELECT Password FROM Information WHERE UserName = '"+TextBox1.Text+"';",con);

            con.Open();
            string password = cmd.ExecuteScalar().ToString();

            if (TextBox2.Text == password)
            {
                if (CheckBox1.Checked)
                {
                    HttpCookie cookie = new HttpCookie("UserDetails");
                    cookie["username"] = TextBox1.Text;
                    cookie["password"] = TextBox2.Text;
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);
                }

                Session["currentuser"] = TextBox1.Text;

                if (TextBox1.Text == "rifat59") 
                {
                    Response.Redirect("User_details.aspx");
                }
                else
                    Response.Redirect("Home_page.aspx");
            }
            else
            {
                Response.Write("Invalid username or password");
            }
            
        }

    }
}