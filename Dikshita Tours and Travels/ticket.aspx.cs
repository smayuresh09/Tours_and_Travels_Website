using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.ComponentModel;
using System.Text;

namespace Dikshita_Tours_and_Travels
{
    public partial class ticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void usubmitbtn_Click(object sender, EventArgs e)
        {
            String str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\TY-BSC-IT\Sem 5\AWP\Practical\Dikshita Tours and Travels\Dikshita Tours and Travels\App_Data\DIKSHITA.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into customers(NAME,CONTACT,EMAIL,LOCATION,DAY,NIGHT,PEOPLE) values ('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + this.DropDownList1.SelectedItem + "','" + this.DropDownList2.SelectedItem + "','" + this.DropDownList3.SelectedItem + "','" + this.TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            string message = "Thank You For Submitting your Query.Our Support Team will Get Back To You Soon..";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedValue = "";
            DropDownList2.SelectedValue = "";
            DropDownList2.SelectedValue = "";
        }
    }
}