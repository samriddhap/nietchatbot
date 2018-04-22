<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Admin/AddNotice.aspx.cs" Inherits="_Default"
    MasterPageFile="~/Admin/Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="banner-w3agile">
        <div class="container">
            <h3>
                <a href="index.html">Home</a> / <span>Add Notice</span></h3>
        </div>
    </div>
    <div class="content">
        <!--contact-->
        <div class="contact-w3l">
            <div class="container">
                <div class="col-md-8 contact-left cont">
                    <div class="contct-info">
                        <h4>
                            Add Notice</h4>
                            <br />
                            <br />
                        <div class="row">
                            <div class="col-md-6 row-grid">
                                <asp:TextBox ID="TextBox1" runat="server" ToolTip="Heading" placeholder="Heading"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Heading is required." ToolTip="Heading is required.">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 row-grid">
                                <input type="text" id="Notice" placeholder="Notice" runat="server" required>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Notice"
                                    ErrorMessage="Notice is required." ToolTip="Notice is required.">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                        
                        <asp:Button ID="Button1" runat="server" CommandName="Log In" CssClass="button" Text="Submit"
                            OnClick="Button1_Click1" />
                    </div>
                </div>
            </div>
        </div>
        <!--contact-->
    </div>
</asp:Content>
