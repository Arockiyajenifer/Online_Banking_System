<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AccountDetails.aspx.cs"
    Inherits="Online_Banking1.AccountDetails" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Account Details</title>

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
            padding: 35px;
        }

        .title {
            font-size: 25px;
            color: #123b6d;
            margin-bottom: 25px;
        }

        .details {
            background: white;
            border: 1px solid #d5d5d5;
            width: 600px;
            padding: 25px;
        }

        .row {
            padding: 15px 0;
            border-bottom: 1px solid #eeeeee;
        }

        .label {
            display: inline-block;
            width: 180px;
            font-weight: bold;
            color: #555;
        }

        .value {
            color: #333;
        }

        .back {
            display: inline-block;
            margin-top: 25px;
            background: #123b6d;
            color: white;
            padding: 12px 20px;
            text-decoration: none;
            border-radius: 3px;
        }

        .back:hover {
            background: #0d2d52;
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
            Account Details
        </div>

        <div class="details">

            <div class="row">
                <span class="label">Full Name</span>
                <span class="value">Arockiyajenifer S</span>
            </div>

            <div class="row">
                <span class="label">Account Number</span>
                <span class="value">1001035567</span>
            </div>

            <div class="row">
                <span class="label">Mobile Number</span>
                <span class="value">7305243194</span>
            </div>

           <div class="row">
    <span class="label">Account Balance</span>
    <asp:Label ID="lblBalance" runat="server" CssClass="value"></asp:Label>
</div>

        </div>

        <a href="Default.aspx" class="back">
            Back to Dashboard
        </a>

    </div>

</form>

</body>
</html>