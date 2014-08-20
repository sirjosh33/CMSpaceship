<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs"  Inherits="CMSpaceship._default" %>
<%@ Register TagPrefix="uc" Namespace="Ion.aspnet.Binding" Assembly="Ion.aspnet" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta http-equiv="X-UA-Compatible" content="IE=9000" />
   <title>Prospective Entry Form</title>
   <link rel="stylesheet" type="text/css" href="css/MainPage.css">
</head>
       <body>
               <div class="wrapper">
                   <form runat="server">
                       <uc:BindableTextBox ID="btxtFirstName" runat="server" Path="FirstName" Width="150px" PropertyName="Text" />
                       <uc:BindableTextBox ID="btxtLastName" runat="server" Path="LastName" Width="150px" PropertyName="Text" />
                       <uc:BindableTextBox ID="btxtEmail" runat="server" Path="Email" Width="150px" PropertyName="Text" />
                       <asp:Button ID="btn" runat="server" OnClick="btn_Click" Text="Submit" />
                    </form>
                       </div>
       </body>
</html>