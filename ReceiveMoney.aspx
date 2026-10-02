<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ReceiveMoney.aspx.cs"
    Inherits="Online_Banking1.ReceiveMoney" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Receive Money - Online Banking</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #f2f4f7;
            color: #333;
        }

        .header {
            background: #123b6d;
            color: white;
            padding: 22px 40px;
            font-size: 25px;
            font-weight: bold;
        }

        .content {
            padding: 40px;
        }

        .title {
            font-size: 25px;
            color: #123b6d;
            margin-bottom: 25px;
        }

        .box {
            background: white;
            border: 1px solid #d5d5d5;
            width: 500px;
            padding: 30px;
        }

        .label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .input {
            width: 95%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 15px;
        }

        .receive-btn {
            background: #123b6d;
            color: white;
            border: none;
            padding: 13px 25px;
            font-size: 16px;
            border-radius: 3px;
            cursor: pointer;
        }

        .receive-btn:hover {
            background: #0d2d52;
        }

        .back {
            display: inline-block;
            margin-top: 20px;
            color: #123b6d;
            text-decoration: none;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        🏦 ONLINE BANKING
    </div>

    <div class="content">

        <div class="title">
            Receive Money
        </div>

        <div class="box">

            <asp:Label ID="lblSender" runat="server"
                Text="Sender Account Number"
                CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtSender" runat="server"
                CssClass="input">
            </asp:TextBox>


            <asp:Label ID="lblAmount" runat="server"
                Text="Amount"
                CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtAmount" runat="server"
                CssClass="input">
            </asp:TextBox>


            <asp:Button ID="btnReceive" runat="server"
                Text="Receive Money"
                CssClass="receive-btn"
                OnClick="btnReceive_Click" />

            <br />

            <a href="Default.aspx" class="back">
                ← Back to Dashboard
            </a>

        </div>

    </div>

</form>

</body>
</html>