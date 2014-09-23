<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMSpaceship.Account.Login" %>

<%@ Register TagPrefix="uc" Namespace="SkyGroundLabs.aspnet.Binding" Assembly="SkyGroundLabs.aspnet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="lblUserName" runat="server" Text="User Name" />
                <uc:BindableTextBox ID="btxtUsername" runat="server" Path="Username" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblPassword" runat="server" Text="Password" />
                <uc:BindableTextBox ID="btxtPassword" runat="server" Path="Password" Width="150px" PropertyName="Text" TextMode="Password" />
                <asp:Button ID="btn" runat="server" OnClick="btn_Login" Text="Submit" />
                <asp:Label ID="lblLoginFail" runat="server" Text="" />
                
            </div>
        </form>
    </div>
    
</body>
</html>
