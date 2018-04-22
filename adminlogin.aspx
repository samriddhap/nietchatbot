<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="_Default"
    MasterPageFile="~/Site.master" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="banner-w3agile">
        <div class="container">
            <h3>
                <a href="index.html">Home</a> / <span>Admin Login</span></h3>
        </div>
    </div>
    <div class="content">
        <!--contact-->
        <div class="contact-w3l">
            <div class="container">
                <div class="col-md-8 contact-left cont">
                    <div class="contct-info">
                        <h4>
                            Admin Login</h4>
                            <br />
                            <br />
                        <div class="row">
                            <div class="col-md-6 row-grid">
                                <asp:TextBox ID="UName" runat="server" placeholder="Email" runat="server" ToolTip="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UName"
                                    ErrorMessage="Email is required." ToolTip="User Name is required.">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 row-grid">
                                <input type="text" id="pwd" placeholder="Password" runat="server" required>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pwd"
                                    ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                        <asp:Button ID="Button1" runat="server" CommandName="Log In" CssClass="button" Text="Log In"
                            OnClick="Button1_Click1" />
                    </div>
                </div>
            </div>
        </div>
        <!--contact-->
    </div>
</asp:Content>
