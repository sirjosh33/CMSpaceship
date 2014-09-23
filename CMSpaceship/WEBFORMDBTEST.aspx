<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WEBFORMDBTEST.aspx.cs" Inherits="CMSpaceship.WEBFORMDBTEST" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <asp:Button ID="btnGetData" runat="server" OnClick="btnGetData_Click" Text="Get Data" />
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
        <br />
    </div>
    </form>
</body>
</html>
