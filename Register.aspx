<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="Online_Banking1.Register" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Online Banking - Register</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: #f4f7fb;
        }

        .header {
            background: #1769d1;
            color: white;
            text-align: center;
            padding: 25px;
        }

        .box {
            width: 420px;
            margin: 35px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            border: 1px solid #ddd;
        }

        h2 {
            text-align: center;
        }

        .label {
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .input {
            width: 100%;
            padding: 11px;
            box-sizing: border-box;
        }

        .btn {
            width: 100%;
            margin-top: 20px;
            padding: 12px;
            background: #1769d1;
            color: white;
            border: none;
            font-size: 16px;
        }

        .login {
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>🏦 Online Banking</h1>
        <p>Create Your Account</p>
    </div>

    <div class="box">

        <h2>Register</h2>

        <asp:Label ID="lblName" runat="server"
            Text="Full Name" CssClass="label" />

        <asp:TextBox ID="txtName" runat="server"
            CssClass="input"
            placeholder="Enter your name" />

        <asp:Label ID="lblAccount" runat="server"
            Text="Account Number" CssClass="label" />

        <asp:TextBox ID="txtAccount" runat="server"
            CssClass="input"
            placeholder="Enter account number" />

        <asp:Label ID="lblMobile" runat="server"
            Text="Mobile Number" CssClass="label" />

        <asp:TextBox ID="txtMobile" runat="server"
            CssClass="input"
            placeholder="Enter mobile number" />

        <asp:Label ID="lblPassword" runat="server"
            Text="Password" CssClass="label" />

        <asp:TextBox ID="txtPassword" runat="server"
            CssClass="input"
            TextMode="Password"
            placeholder="Enter password" />

        <asp:Button ID="btnRegister" runat="server"
    Text="Register"
    CssClass="btn"
    OnClick="btnRegister_Click" />

        <div class="login">
            Already have an account?
            <a href="Login.aspx">Login</a>
        </div>

    </div>

</form>

</body>
</html>