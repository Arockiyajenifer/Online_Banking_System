<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Banking1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online_Banking1- Login</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f7fb;
        }

        .header {
            background: #1769d1;
            color: white;
            text-align: center;
            padding: 35px;
        }

        .header h1 {
            margin: 0;
            font-size: 36px;
        }

        .header p {
            font-size: 18px;
        }

        .login-box {
            width: 420px;
            margin: 50px auto;
            background: white;
            padding: 35px;
            border: 1px solid #d5e2f2;
            border-radius: 10px;
        }

        .login-box h2 {
            text-align: center;
            color: #222;
        }

        .label {
            display: block;
            margin-top: 20px;
            margin-bottom: 8px;
            font-weight: bold;
        }

        .input {
            width: 100%;
            padding: 12px;
            box-sizing: border-box;
            border: 1px solid #b8c7d9;
            border-radius: 5px;
            font-size: 15px;
        }

        .login-btn {
           width: 150px;
           margin: 25px auto 0;
           display: block;
           padding: 13px;
           background: #1769d1;
           color: white;
           border: none;
           border-radius: 5px;
           font-size: 17px;
           cursor: pointer;
         }
        

        .register {
            text-align: center;
            margin-top: 20px;
        }

        .register a {
            color: #1769d1;
        }
    </style>
</head>

<body>

<form id="form1" runat="server" autocomplete="off">

    <div class="header">
        <h1>🏦 Online Banking</h1>
        <p>Login to Your Account</p>
    </div>

    <div class="login-box">

        <h2>Login</h2>

        <asp:Label ID="lblAccount" runat="server"
            Text="Account Number"
            CssClass="label">
        </asp:Label>

        <asp:TextBox ID="txtAccount" runat="server"
            CssClass="input"
            placeholder="Enter your account number">
        </asp:TextBox>


        <asp:Label ID="lblPassword" runat="server"
            Text="Password"
            CssClass="label">
        </asp:Label>

        <asp:TextBox ID="txtPassword" runat="server"
            CssClass="input"
            TextMode="Password"
            placeholder="Enter your password">
        </asp:TextBox>


        <asp:Button ID="btnLogin" runat="server"
    Text="Login"
    CssClass="login-btn"
    OnClick="btnLogin_Click" />


        <div class="register">
            Don't have an account?
            <a href="Register.aspx">Register</a>
        </div>

    </div>

</form>

</body>
</html>