using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Text;

namespace Dikshita_Tours_and_Travels
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uloginbtn_Click(object sender, EventArgs e)
        {
            String user, pass;
            user = TextBox1.Text;
            pass = TextBox2.Text;
            if (user == "Mayuresh" && pass == "1234")
            {
                Response.Redirect("data.aspx");
            }
            else
            {
                string message = "Invalid Username or Password! Try Again! ";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}