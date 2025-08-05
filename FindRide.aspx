<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindRide.aspx.cs" Inherits="Projectx.FindRide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width: 500px; margin: 40px auto; padding: 20px; border: 1px solid #ddd; border-radius: 8px; background-color: #f9f9f9; font-family: Arial;">
    <h2 style="text-align:center; color:#007bff;">Find a Ride</h2>

    <div style="margin-bottom: 15px;">
        <asp:TextBox ID="txtSearchFrom" runat="server" CssClass="form-control" Width="100%" Placeholder="Leaving From"></asp:TextBox>
    </div>

    <div style="margin-bottom: 15px;">
        <asp:TextBox ID="txtSearchTo" runat="server" CssClass="form-control" Width="100%" Placeholder="Going To"></asp:TextBox>
    </div>

    <div style="text-align:center;">
        <asp:Button ID="btnSearch" runat="server" Text="Find Ride" CssClass="btn" OnClick="btnSearch_Click" />
    </div>
</div>

<!-- Ride Results -->
<div style="width: 600px; margin: 20px auto; font-family: Arial;">
    <asp:Repeater ID="rptRides" runat="server">
        <ItemTemplate>
            <div style="border: 1px solid #ccc; padding: 15px; margin-bottom: 15px; border-radius: 8px; background-color: #ffffff; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
                <h3 style="margin: 0 0 10px 0; color: #333;">
                    <%# Eval("LeavingFrom") %> ➝ <%# Eval("GoingTo") %>
                </h3>
                <p style="margin: 0; font-size: 14px; color: #555;">
                    <strong>Date:</strong> <%# Eval("RideDate", "{0:dd MMM yyyy}") %><br />
                    <strong>Seats:</strong> <%# Eval("AvailableSeat") %> |
                    <strong>Price:</strong> ₹ <%# Eval("Price", "{0:N2}") %>
                </p>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>

<!-- Styles -->
<style>
    .form-control {
        padding: 8px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .btn {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 25px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
    }

    .btn:hover {
        background-color: #0056b3;
    }
</style>

        </div>
    </form>
</body>
</html>
