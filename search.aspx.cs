using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Text;
using System.Device.Location;
using TFIDFExample;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }

    static char[] _delimiters = new char[]
    {
	' ',
	',',
	';'
    };

    public static string RemoveStopwords(string input)
    {
        
        var words = input.Split(_delimiters,
            StringSplitOptions.RemoveEmptyEntries);
        
        var found = new Dictionary<string, bool>();
        
        StringBuilder builder = new StringBuilder();
       
        foreach (string currentWord in words)
        {
        
            string lowerWord = currentWord.ToLower();
          
            
        }
       
        return builder.ToString().Trim();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SEARCHTEXT", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@TEXT", (TextBox1.Text));

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text += TextBox1.Text + " : " + dr[1].ToString() + Environment.NewLine+"__________________________________________________\n";
            dr.Close();
            con.Close();
            TextBox1.Text = string.Empty;
        }
        else
        {
            TextBox2.Text += TextBox1.Text + " : " + "Sorry, Did not get You. For more you can visit our web niet.co.in" + Environment.NewLine +"_________________________________________________\n";
        }
        dr.Close();
        con.Close();
        TextBox1.Text = string.Empty;
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    
}
