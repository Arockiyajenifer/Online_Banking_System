<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Logout.aspx.cs"
    Inherits="Online_Banking1.Logout" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Logout - Online Banking</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #f2f4f7;
        }

        .header {
            background: #123b6d;
            color: white;
            padding: 22px 40px;
            font-size: 25px;
            font-weight: bold;
        }

        .box {
            width: 420px;
            margin: 120px auto;
            background: white;
            border: 1px solid #d5d5d5;
            padding: 40px;
            text-align: center;
        }

        .title {
            font-size: 25px;
            color: #123b6d;
            margin-bottom: 15px;
        }

        .message {
            color: #555;
            font-size: 16px;
            margin-bottom: 25px;
        }

        .btn {
            padding: 12px 30px;
            border: none;
            border-radius: 4px;
            font-size: 15px;
            cursor: pointer;
            margin: 5px;
        }

        .ok-btn {
            background: #123b6d;
            color: white;
        }

        .cancel-btn {
            background: #777;
            color: white;
        }

        .success-icon {
            width: 70px;
            height: 70px;
            background: #28a745;
            color: white;
            border-radius: 50%;
            margin: 0 auto 20px;
            font-size: 45px;
            line-height: 70px;
        }

        .success-title {
            color: #28a745;
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 25px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        🏦 ONLINE BANKING
    </div>

    <div class="box">

        <!-- CONFIRM LOGOUT -->

        <asp:Panel ID="pnlConfirm" runat="server">

            <div class="title">
                Logout
            </div>

            <div class="message">
                Are you sure you want to logout?
            </div>

            <asp:Button ID="btnLogout"
                runat="server"
                Text="OK"
                CssClass="btn ok-btn"
                OnClick="btnLogout_Click" />

            <asp:Button ID="btnCancel"
                runat="server"
                Text="Cancel"
                CssClass="btn cancel-btn"
                OnClick="btnCancel_Click" />

        </asp:Panel>


        <!-- LOGOUT SUCCESS -->

        <asp:Panel ID="pnlSuccess"
            runat="server"
            Visible="false">

            <div class="success-icon">
                ✓
            </div>

            <div class="success-title">
                Logout Successfully
            </div>

            <asp:Button ID="btnSuccessOK"
                runat="server"
                Text="OK"
                CssClass="btn ok-btn"
                OnClientClick="window.location='Login.aspx'; return false;" />

        </asp:Panel>

    </div>

</form>

</body>
</html>