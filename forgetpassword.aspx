<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="forgetpassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="banner-w3agile">
        <div class="container">
            <h3>
                <a href="index.html">Home</a> / <span>Forget Password</span></h3>
        </div>
    </div>
    <div class="content">
        <!--contact-->
        <div class="contact-w3l">
            <div class="container">
                <div class="col-md-8 contact-left cont">
                    <div class="contct-info">
                        <h4>
                            Forget Password</h4>
                        <div class="row">
                            <div class="col-md-6 row-grid">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Email is required." ToolTip="Email is required.">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <!--contact-->
    </div>
</asp:Content>
