<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Student/ViewNotice.aspx.cs" Inherits="_Default"
    MasterPageFile="~/Student/Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
<div class="banner-w3agile">
        <div class="container">
            <h3>
                <a href="index.html">Home</a> / <span>Notice</span></h3>
        </div>
    </div>
    <div class="content">
        <!--contact-->
       
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
                    CssClass="table table-bordered" AutoGenerateColumns="False" Width="80%" CellPadding="4"
                    ForeColor="#333333" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Heading" HeaderText="Heading" 
                            SortExpression="Heading" />
                        <asp:BoundField DataField="Notice" HeaderText="Notice" 
                            SortExpression="Notice" />
                    </Columns>
                </asp:GridView>
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Heading], [Notice] FROM [Notice]">
                </asp:SqlDataSource>
               
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
   </asp:Content>
