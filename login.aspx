<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default"
    MasterPageFile="~/Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="banner-w3agile">
        <div class="container">
            <h3>
                Login/Register</h3>
        </div>
    </div>
    <div class="content">
        <!--contact-->
        <div class="contact-w3l">
            <div class="container">
                <div class="col-md-8 contact-left cont">
                    <div class="contct-info">
                    <br />
<%--                    <div class="row"> <center>  <h4>
                            Login</h4></center></div>--%>
                     
                            <br />
                            <br />
                        <div class="row">
                        <div class="col-md-6 row-grid"></div>
                            <div class="col-md-6 row-grid">
                                <asp:TextBox ID="TextBox1" runat="server" ToolTip="Email" placeholder="Email" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Email is required." ToolTip="Email is required.">*</asp:RequiredFieldValidator>
                            </div>
                            </div>
                            <div class="row">
                              <div class="col-md-6 row-grid"></div>
                            <div class="col-md-6 row-grid">
                                <input type="password" id="pwd" placeholder="Password" runat="server" class="form-control" required>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pwd"
                                    ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator>
                            </div>
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                       
                        <%--<a href="forgetpassword.aspx">Forget Password</a>--%>
                        <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-6 text-right">
                            <asp:Button ID="Button1" runat="server" CommandName="Log In" class="btn btn-success" Text="Log In"
                            OnClick="Button1_Click1" />
                            </div>
                        </div>
                           
                    
                            
                  
        </div>
        </div>
        </div>
        <!--contact-->
    </div>
</asp:Content>
