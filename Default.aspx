<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="Online_Banking1._Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Online Banking - Dashboard</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #f2f4f7;
            color: #333;
        }

        .top-header {
            background: #123b6d;
            color: white;
            height: 70px;
            display: flex;
            align-items: center;
            padding: 0 40px;
        }

        .bank-name {
            font-size: 25px;
            font-weight: bold;
        }

        .user-area {
            margin-left: auto;
            font-size: 15px;
        }

        .main {
            display: flex;
            min-height: calc(100vh - 70px);
        }

        .sidebar {
            width: 220px;
            background: #ffffff;
            border-right: 1px solid #d5d5d5;
        }

        .menu-title {
            padding: 20px;
            font-weight: bold;
            color: #123b6d;
            border-bottom: 1px solid #ddd;
        }

        .menu a {
            display: block;
            padding: 15px 20px;
            color: #333;
            text-decoration: none;
            border-bottom: 1px solid #eeeeee;
        }

        .menu a:hover {
            background: #eef3f8;
            color: #123b6d;
        }

        .content {
            flex: 1;
            padding: 35px;
        }

        .page-title {
            font-size: 25px;
            color: #123b6d;
            margin-bottom: 25px;
        }

        .summary {
            background: white;
            border: 1px solid #d5d5d5;
            padding: 25px;
            max-width: 700px;
        }

        .summary-title {
            font-size: 18px;
            font-weight: bold;
            color: #555;
            border-bottom: 1px solid #ddd;
            padding-bottom: 12px;
            margin-bottom: 20px;
        }

        .balance {
            font-size: 32px;
            font-weight: bold;
            color: #123b6d;
        }

        .account-number {
            margin-top: 10px;
            color: #666;
        }

        .quick-title {
            margin-top: 30px;
            font-size: 20px;
            color: #123b6d;
        }

        .quick-links {
            display: flex;
            gap: 15px;
            margin-top: 15px;
            flex-wrap: wrap;
        }

        .quick-button {
            background: #123b6d;
            color: white;
            padding: 13px 22px;
            text-decoration: none;
            border-radius: 3px;
        }

        .quick-button:hover {
            background: #0d2d52;
        }

        .footer {
            margin-top: 45px;
            color: #777;
            font-size: 13px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="top-header">
        <div class="bank-name">
            🏦 ONLINE BANKING
        </div>

        <div class="user-area">
            Welcome, Customer
        </div>
    </div>

    <div class="main">

        <div class="sidebar">

            <div class="menu-title">
                MAIN MENU
            </div>

            <div class="menu">

                <a href="Default.aspx">
                    🏠 Dashboard
                </a>

                <a href="Transfer.aspx">
                    💸 Transfer Money
                </a>

               

                <a href="ReceiveMoney.aspx">
                📥 Receive Money
                </a>

                <a href="Transaction.aspx">
                    📄 Transaction History
                </a>

                <a href="AccountDetails.aspx">
                    👤 Account Details
                </a>

                <a href="Logout.aspx">
                    🚪 Logout
                </a>

            </div>
        </div>

        <div class="content">

            <div class="page-title">
                Account Dashboard
            </div>

            <div class="summary">

                <div class="summary-title">
                    ACCOUNT SUMMARY
                </div>

                <div>
                    Available Balance
                </div>

                <div class="balance">
    <asp:Label ID="lblBalance" runat="server"></asp:Label>
</div>
                
                <div class="account-number">
                    Account Number : 1001035567
                </div>

            </div>

            <div class="quick-title">
                Quick Services
            </div>

            <div class="quick-links">

                <a href="Transfer.aspx" class="quick-button">
                    Transfer Money
                </a>

                <a href="Transaction.aspx" class="quick-button">
                    Transaction History
                </a>

            </div>

            <div class="footer">
                © 2026 Online Banking System | Secure Banking Portal
            </div>

        </div>

    </div>

</form>
</body>
</html>