using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Net.NetworkInformation;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    string ip6 = "";
    save s = new save();
    void FillCapctha()
    {
        try
        {
            
            Random random = new Random();
            string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combination[random.Next(combination.Length)]);
            Session["captcha"] = captcha.ToString();
           // imgCaptcha.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();
        }
        catch
        {

            throw;
        }
    }
 
    protected void Page_Load(object sender, EventArgs e)
    {
    
        

    }
   
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       
            s.insert("insert into Registration([Username],[Password],[Emailid],[Contactno]) values('" + txtname.Text + "','" + TextBox2.Text + "','" + txtemail.Text + "','" + txtContact.Text + "')");
            string javaScript = "<script language=JavaScript>\n" + "alert('Registration successfull !!');\n" + "</script>";
            RegisterStartupScript("image1_ClickScript", javaScript);
            txtContact.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtname.Text = string.Empty;
        
        

    }
    public static string DownloadFile(string FtpUrl, string FileNameToDownload,
                        string userName, string password, string tempDirPath)
    {
        string ResponseDescription = "";
        string PureFileName = new FileInfo(FileNameToDownload).Name;
        string DownloadedFilePath = tempDirPath + "/" + PureFileName;
        string downloadUrl = String.Format("{0}/{1}", FtpUrl, FileNameToDownload);
        FtpWebRequest req = (FtpWebRequest)FtpWebRequest.Create(downloadUrl);
        req.Method = WebRequestMethods.Ftp.DownloadFile;
        req.Credentials = new NetworkCredential(userName, password);
        req.UseBinary = true;
        req.Proxy = null;
        try
        {
            FtpWebResponse response = (FtpWebResponse)req.GetResponse();
            Stream stream = response.GetResponseStream();
            byte[] buffer = new byte[2048];
            FileStream fs = new FileStream(DownloadedFilePath, FileMode.Create);
            int ReadCount = stream.Read(buffer, 0, buffer.Length);
            while (ReadCount > 0)
            {
                fs.Write(buffer, 0, ReadCount);
                ReadCount = stream.Read(buffer, 0, buffer.Length);
            }
            ResponseDescription = response.StatusDescription;
            fs.Close();
            stream.Close();
        }
        catch (Exception e)
        {
            Console.WriteLine(e.Message);
        }
        return ResponseDescription;
    }
    


}