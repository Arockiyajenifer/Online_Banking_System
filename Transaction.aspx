<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Transaction.aspx.cs"
    Inherits="Online_Banking1.Transaction"%>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Online Banking - Transaction History</title>

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
            width: 90%;
            max-width: 900px;
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

        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .table th {
            background: #123b6d;
            color: white;
            padding: 12px;
            text-align: left;
        }

        .table td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }

        .back {
            display: inline-block;
            margin-top: 25px;
            background: #123b6d;
            color: white;
            padding: 11px 20px;
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
            Transaction History
        </div>

        <asp:GridView ID="gvTransactions"
            runat="server"
            CssClass="table"
            AutoGenerateColumns="true">
        </asp:GridView>

        <a href="Default.aspx" class="back">
            Back to Dashboard
        </a>

    </div>

</form>

</body>
</html>