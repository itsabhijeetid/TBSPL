<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="TATA_BLUESCOPE.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="admin.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <div class="container">
        <center>
            <img src="images/login.png" class="login_logo" />
            <h3 class="login-head">Admin Login </h3>
        </center>
        <table>
            <tr>
                <td>
                    <label for="uname">Server Name</label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txt_server_name" placeholder="Enter Server Name"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label for="uid">User ID</label>

                </td>
                <td>
                    <asp:TextBox runat="server" ID="txt_user_id" placeholder="Enter User ID"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>
                    <label for="psw">Password</label>

                </td>
                <td>
                    <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>
                    <label for="dbname">DB Name</label>

                </td>

                <td>
                    <asp:TextBox runat="server" ID="txt_db_name" placeholder="Enter Database Name"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>
                    <label for="tbname">Table Name</label>

                </td>

                <td>
                    <asp:TextBox runat="server" ID="txt_table_name" placeholder="Enter Table Name"></asp:TextBox>

                </td>
            </tr>
        </table>
        <center>
            <asp:Button runat="server" ID="admin_btn_Login" class="login-btn" Text="Connect" />

        </center>
    </div>

</asp:Content>
