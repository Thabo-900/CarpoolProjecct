<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Projectx.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard - Campus Ride Share</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }
        .container {
            width: 90%;
            margin: auto;
            padding: 20px;
        }
        .btn {
            margin: 10px;
            padding: 10px 20px;
            background-color: #007acc;
            color: white;
            border: none;
            cursor: pointer;
        }
        .ride-box {
            border: 1px solid #ccc;
            padding: 15px;
            margin-bottom: 10px;
            background-color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Welcome to CU Campus Ride Share</h2>

            <asp:Button ID="btnFindRide" runat="server" Text="Find a Ride" CssClass="btn" OnClick="btnFindRide_Click" />
            <asp:Button ID="btnOfferRide" runat="server" Text="Offer a Ride" CssClass="btn" OnClick="btnOfferRide_Click" />

            <h3>Available Rides</h3>
            <asp:Repeater ID="rptRides" runat="server">
                <ItemTemplate>
                    <div class="ride-box">
                        <strong>From:</strong> <%# Eval("LeavingFrom") %> <br />
                        <strong>To:</strong> <%# Eval("GoingTo") %> <br />
                        <strong>Date:</strong> <%# Eval("RideDate", "{0:dd-MMM-yyyy HH:mm}") %> <br />
                        <strong>Seats:</strong> <%# Eval("AvailableSeat") %> <br />
                        <strong>Price:</strong> $<%# Eval("Price") %>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>

