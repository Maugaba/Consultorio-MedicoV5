<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Consultorio_Medico.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color: #4DE6A8">Hospital Mesoamericana</h1>
        </div>
        &nbsp;<asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" BackColor="#CCFFFF" style="font-size: large">
        </asp:Login>
        <p class="auto-style1" style="background-color: #4DE6A8">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ó crea tu usuario</p>
        <p>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>
            <asp:Label ID="Label1" runat="server" Text="Usuario:" CssClass="auto-style1"></asp:Label>
            <span class="auto-style1">&nbsp;&nbsp; </span>
            <asp:TextBox ID="TextBoxUsuario" runat="server" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="Label2" runat="server" Text="Contraseña:" CssClass="auto-style1"></asp:Label>
            <span class="auto-style1">&nbsp;&nbsp; </span>
            <asp:TextBox ID="TextBoxContraseña" runat="server" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
        </p>
        <p style="background-color: #CCFFFF">
            <span class="auto-style1">&nbsp;Nivel de Usuario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><asp:RadioButtonList ID="RadioButtonListNivel" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button_Crear" runat="server" OnClick="Crear_Click" style="height: 26px" Text="Crear" BackColor="#99CCFF" CssClass="auto-style1" />
            <br />
        </p>
    </form>
</body>
</html>
