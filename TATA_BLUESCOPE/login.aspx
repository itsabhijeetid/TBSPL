<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TATA_BLUESCOPE.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href ="login.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
       
             <div class="container">
                <center>
                    <img src="images/login.png" class="login_logo" />
                    <h3 class="login-head"> User Login </h3>
                </center>
                <label for="uname">Username</label>
                <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
                <br /><label for="psw">Password</label>
                <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                <center>
                    <asp:Button runat="server" ID="btn_Login" class="login-btn" Text="Login" OnClick="btn_Login_Click"/>
                 <div class="forget-psw">
                     <i>forget password?</i>
                 </div>
                 </center>
            </div>
      
</asp:Content>
