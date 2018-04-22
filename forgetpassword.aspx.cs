using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Intrusiondetection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string SendEmail(string toAddress, string subject, string body)
    {
        string result = "Message Sent Successfully..!!";
        string senderID = "er.nikita17@gmail.com";// use sender’s email id here..
        const string senderPassword = "nikita17"; // sender password here…
        try
        {
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com", // smtp server address here…
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                Timeout = 30000,
            };
            MailMessage message = new MailMessage(senderID, toAddress, subject, body);
            smtp.Send(message);
        }
        catch (Exception ex)
        {
            result = "Error sending email.!!!";
        }
        return result;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select password from [Registration] where [emailid]='" + TextBox1.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           
            Label1.Text = Convert.ToString(dr[0]);
            SendEmail(TextBox1.Text, "Your Password", "your password is:" + Convert.ToString(Label1.Text));
            Response.Write("<script>alert('Password Sent to mail')</script>");

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid emailid";

        }
        con.Close();
    }
}