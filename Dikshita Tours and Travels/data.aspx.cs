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
    public partial class data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\TY-BSC-IT\Sem 5\AWP\Practical\Dikshita Tours and Travels\Dikshita Tours and Travels\App_Data\DIKSHITA.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from customers", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            
        }
    }
}