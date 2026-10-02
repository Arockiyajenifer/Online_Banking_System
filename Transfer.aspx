<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Transfer.aspx.cs"
    Inherits="Online_Banking1.Transfer" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Online Banking - Money Transfer</title>

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
            padding: 20px 40px;
        }

        .header h1 {
            margin: 0;
            font-size: 25px;
        }

        .container {
            width: 600px;
            margin: 40px auto;
            background: white;
            border: 1px solid #d5d5d5;
            padding: 30px;
        }

        .title {
            font-size: 24px;
            color: #123b6d;
            border-bottom: 1px solid #ddd;
            padding-bottom: 15px;
            margin-bottom: 25px;
        }

        .label {
            display: block;
            margin-top: 18px;
            margin-bottom: 7px;
            font-weight: bold;
        }

        .input {
            width: 100%;
            padding: 11px;
            box-sizing: border-box;
            border: 1px solid #bbb;
            font-size: 15px;
        }

        .transfer-btn {
            margin-top: 25px;
            padding: 12px 25px;
            background: #123b6d;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 15px;
        }

        .back {
            margin-left: 10px;
            color: #123b6d;
            text-decoration: none;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>🏦 ONLINE BANKING</h1>
    </div>

    <div class="container">

        <div class="title">
            Transfer Money
        </div>

        <asp:Label ID="lblAccount" runat="server"
            Text="Beneficiary Account Number"
            CssClass="label" />

        <asp:TextBox ID="txtAccount" runat="server"
            CssClass="input"
            placeholder="Enter account number" />

        <asp:Label ID="lblConfirm" runat="server"
            Text="Confirm Account Number"
            CssClass="label" />

        <asp:TextBox ID="txtConfirm" runat="server"
            CssClass="input"
            placeholder="Re-enter account number" />

        <asp:Label ID="lblAmount" runat="server"
            Text="Transfer Amount"
            CssClass="label" />

        <asp:TextBox ID="txtAmount" runat="server"
            CssClass="input"
            placeholder="Enter amount" />

        <asp:Button ID="btnTransfer" runat="server"
    Text="Transfer Money"
    CssClass="transfer-btn"
    OnClick="btnTransfer_Click" />

        <a href="Default.aspx" class="back">
            Back to Dashboard
        </a>

    </div>

</form>

</body>
</html>