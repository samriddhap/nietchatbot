<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="banner-w3agile">
        <div class="container">
            <h3>
                <a href="index.html">Home</a> / <span>Login</span></h3>
        </div>
    </div>
    <div class="content">
        <!--contact-->
        <div class="contact-w3l">
            <div class="container">
                <div class="col-md-8 contact-left cont">
                    <div class="contct-info">
                        <h4>
                            Login</h4>
                        <div class="row">
                            <div class="col-md-6 row-grid">
                                <asp:TextBox ID="TextBox1" runat="server" ToolTip="Email" placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Email is required." ToolTip="Email is required.">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 row-grid">
                                <input type="text" id="pwd" placeholder="Password" runat="server" required>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pwd"
                                    ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                        <a href="forgetpassword.aspx">Forget Password</a>
                        <asp:Button ID="Button1" runat="server" CommandName="Log In" CssClass="button" Text="Log In"
                            />
                    </div>
                </div>
            </div>
        </div>
        <!--contact-->
    </div>
</asp:Content>

