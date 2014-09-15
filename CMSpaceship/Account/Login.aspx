<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMSpaceship.Account.Login" %>
<%@ Register TagPrefix="uc" Namespace="SkyGroundLabs.aspnet" Assembly="SkyGroundLabs.aspnet" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="lblLoginFail" runat="server" Text="" />
                <asp:Button ID="btn" runat="server" OnClick="_login" Text="Submit" />
            </div>
        </form>
    </div>
    
</body>
</html>
