<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="banner-w3agile">
        <div class="container">
            <h3>
                College Enquiry Chatbot</h3>
        </div>
    </div>
    <div class="content">
        <!--contact-->
        <div class="contact-w3l">
            <div class="container">
              <br />
              <br />
                <div class="col-md-4 contact-left">
                    <div class="contct-info">
                    </div>
                </div>
                <div class="col-md-8 contact-left cont">
                    <div class="contct-info">
                        <div class="row">
                            <div class="col-md-6 row-grid">
                            <br />
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Type Your Query here....." ></asp:TextBox>
                            </div>
                            <div class="col-md-6 row-grid">
                                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search"  class="btn btn-success"/>
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                    </div>
                    <br />
     
                    <div class="contct-info">
                        <div class="row">
                            <div class="col-md-6 row-grid">
                                <asp:TextBox TextMode="MultiLine" ID="TextBox2" runat="server" Height="350px" Width="350px"></asp:TextBox>
                            </div>
                           
                            <div class="clearfix">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--contact-->
    </div>
    <table width="100%">
        <tr>
            <td align="center">
                <br />
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:GridView ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Vertical"
                    CssClass="table table-bordered" AutoGenerateColumns="false" Width="80%" CellPadding="4"
                    ForeColor="#333333" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label runat="server" ID="id" Text='<%#Eval("Id") %>'></asp:Label></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="ResumeLabel" runat="server" Text='<%# Eval("Search") %>' /></ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
