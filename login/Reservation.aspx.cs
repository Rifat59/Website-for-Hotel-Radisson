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
    public partial class Reservation : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckInDateId.Visible = false;
                CheckOutDateId.Visible = false;
            }
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            display();
        }

        protected void checkinbuttonid_Click(object sender, EventArgs e)
        {
            if (CheckInDateId.Visible)
            {
                CheckInDateId.Visible = false;
            }
            else
            {
                CheckInDateId.Visible = true;
            }
            
        }

        protected void CheckInDateId_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = CheckInDateId.SelectedDate.ToString("d");
            CheckInDateId.Visible = false;
        }

        protected void CheckInDateId_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Red;
            }
        }

        protected void checkoutbuttonid_Click(object sender, EventArgs e)
        {
            if (CheckOutDateId.Visible)
            {
                CheckOutDateId.Visible = false;
            }
            else
            {
                CheckOutDateId.Visible = true;
            }
        }

        protected void CheckOutDateId_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = CheckOutDateId.SelectedDate.ToString("d");
            CheckOutDateId.Visible = false;
        }

        protected void CheckOutDateId_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Red;
            }
        }

        protected void submitbuttonid_Click(object sender, EventArgs e)
        {
            Response.Write("Congratulations " + TextBox1.Text + "!!!! <br>"+"You have successfully reserved " + DropDownList2.SelectedItem.ToString() + " " + DropDownList1.SelectedItem.ToString());
            Response.Write(" from " + TextBox2.Text + " to " + TextBox3.Text+"<br>");

            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Reserve_Info values ('" + TextBox1.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";

            cmd.ExecuteNonQuery();

            display();
        }

        public void display()
        {
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Reserve_Info";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void deletebuttonid_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Reserve_Info where Name = '" + TextBox1.Text + "'";

            cmd.ExecuteNonQuery();

            TextBox1.Text = "";

            Response.Write("Deleted Sucessfully!!");
            display();
        }

        protected void updatebuttonid_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Reserve_Info set Name = '" + TextBox1.Text + "', No_Of_Rooms = '" + DropDownList2.SelectedItem.ToString() + "', Room_Type = '" + DropDownList1.SelectedItem.ToString() + "', Check_In_Date = '" + TextBox2.Text + "', Check_Out_Date = '" + TextBox3.Text + "', Email = '" + TextBox4.Text + "', Mobile_No = '" + TextBox5.Text + "'";

            cmd.ExecuteNonQuery();

            Response.Write("Updated Sucessfully!!");
            display();
        }

        
    }
}