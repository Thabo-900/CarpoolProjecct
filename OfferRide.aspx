<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OfferRide.aspx.cs" Inherits="Projectx.OfferRide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<asp:Panel ID="pnlOfferRide" runat="server" Style="width: 400px; margin: 40px auto; padding: 25px; border: 1px solid #ccc; border-radius: 10px; background-color: #f5faff; font-family: Arial;">
    <h2 style="text-align:center; color:#3366cc;">Offer a Ride</h2>

    <div style="margin-bottom: 15px;">
        <asp:Label runat="server" Text="Leaving From:" AssociatedControlID="txtFrom" />
        <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
    </div>

    <div style="margin-bottom: 15px;">
        <asp:Label runat="server" Text="Going To:" AssociatedControlID="txtTo" />
        <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
    </div>

    <div style="margin-bottom: 15px;">
        <asp:Label runat="server" Text="Date:" AssociatedControlID="txtDate" />
        <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control" Width="100%"></asp:TextBox>
    </div>

    <div style="margin-bottom: 15px;">
        <asp:Label runat="server" Text="Seats Available:" AssociatedControlID="txtSeats" />
        <asp:TextBox ID="txtSeats" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
    </div>

    <div style="margin-bottom: 20px;">
        <asp:Label runat="server" Text="Price (₹):" AssociatedControlID="txtPrice" />
        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
    </div>

    <div style="text-align:center;">
        <asp:Button ID="btnOffer" runat="server" Text="Offer Ride" CssClass="btn" OnClick="btnOffer_Click" />
    </div>
</asp:Panel>

<style>
    .form-control {
        padding: 8px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .btn {
        background-color: #3366cc;
        color: white;
        border: none;
        padding: 10px 25px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
    }

    .btn:hover {
        background-color: #2a57a5;
    }
</style>


        </div>
    </form>
</body>
</html>
