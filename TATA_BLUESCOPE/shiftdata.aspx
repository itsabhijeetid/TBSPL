    <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="shiftdata.aspx.cs" Inherits="TATA_BLUESCOPE.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel ="stylesheet" href="shiftdata.css" /> 
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">

                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 class="mg_bottom production_head">Production Report </h4>
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label class="label-date mg_bottom">From Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="fromdate" runat="server" TextMode="Date" CssClass="inputdata"></asp:TextBox>
                                </div>
                            </div>
                  
                            <div class="col-md-6">
                                <label class="label-date mg_bottom">To Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="todate" runat="server" TextMode="Date" CssClass="inputdata"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row shift">
                            <div class="col-md-4"></div>
                            <div class="col-md-2">
                                <label class="label-date"> Shift</label>
                            </div>
                            <div class="col-md-2">
                                <asp:CheckBoxList ID="shiftoption" runat="server">
                          
                                    <asp:ListItem>&nbsp; A </asp:ListItem>
                                    <asp:ListItem>&nbsp; B </asp:ListItem>
                                    <asp:ListItem>&nbsp; C </asp:ListItem>
                                </asp:CheckBoxList> 
                            </div>
                            <div class="col-md-4"></div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <center>
                                    <div class ="form-group">
                                        <br />
                                        <asp:Button ID="show" runat="server" Text="Show" class="show-btn btn btn-primary btn-block btn-lg" OnClick="show_Click"/>
                                    </div>
                                </center>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <%-- Table DATA--%>
            <div class="col-md-8">
                <div class="card">

                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 class = "production_head">Production List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="production_list" runat="server" class="table table-striped table-bordered" BackColor="White">
                                    
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
