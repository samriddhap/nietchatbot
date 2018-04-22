<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="banner-w3agile">
        <div class="container">
            <h3>
                <span>Registration</span></h3>
        </div>
    </div>
    <div class="content">
        <!--contact-->
        <div class="contact-w3l">
            <div class="container">
                <div class="col-md-8 contact-left cont">
                    <div class="contct-info">
                        <br />
                        <br />
                        <br />
                        <%--<div class="row">
                        <div class=col-md-8">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                             DisplayMode = "BulletList" ShowSummary = "true" HeaderText="Errors:" />
                        </div>
                        </div>--%>
                        <div class="row">
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-5 row-grid">
                                <asp:TextBox ID="txtname" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                    ErrorMessage="Please Enter your name!" ToolTip="Please Enter your name!"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-5 row-grid">
                                <%--<input type="password" id="TextBox2" placeholder="Password" runat="server" class="form-control" required>--%>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control"></asp:TextBox>
                                <ajax:PasswordStrength ID="pwdStrength" StrengthIndicatorType="Text" PrefixText="Strength:"
                                    runat="server" TargetControlID="TextBox2" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                    ErrorMessage="Please Enter your Password!" ToolTip="Password is required.!"></asp:RequiredFieldValidator>
                                  </asp:RegularExpressionValidator>
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-5 row-grid">
                                <asp:TextBox ID="txtemail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail"
                                    ErrorMessage="Please Enter your Email!" ToolTip="Email is required."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="remail" runat="server" ControlToValidate="txtemail"
                                    ErrorMessage="Enter valid email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-5 row-grid">
                                <asp:TextBox ID="txtContact" runat="server" placeholder="Contact No." CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContact"
                               
                              
                                    ErrorMessage=" Please Enter Contact No.!" ToolTip="Please Enter Contact No."></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid No!" ControlToValidate="txtContact" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ></asp:RegularExpressionValidator> 
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-6 text-right">
                                <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Register" class="btn btn-success" />
                            </div>
                            <div class="col-md-3">
                                <br />
                                <a href="login.aspx">Already Registered? Click here to login</a>
                            </div>
                        </div>
                        <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" class="btn btn-success"/>--%>
                    </div>
                </div>
            </div>
        </div>
        <!--contact-->
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style1" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                &nbsp;<asp:Label ID="lblip" runat="server" Text="Label" Visible="false"></asp:Label>
            </td>
        </tr>
    </table>
    </a>
</asp:Content>
