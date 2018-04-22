using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class _Default : System.Web.UI.Page
{           
    
    save s = new save();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        s.insert("insert into Notice(Heading,Notice) values('" + TextBox1.Text + "','" + Notice.Value + "')");
        Response.Write("<script>alert('Notice Added')</script>");
        Notice.Value = string.Empty;
        TextBox1.Text = string.Empty;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}