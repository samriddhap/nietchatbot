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
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (UName.Text == "admin" && pwd.Value == "admin")
        {
            Response.Redirect("~/Admin/AddNotice.aspx");
        }
        else
        {
            
                string javaScript = "<script language=JavaScript>\n" + "alert('Error !!');\n" + "</script>";
                RegisterStartupScript("image1_ClickScript", javaScript);
           
        }
    }
}