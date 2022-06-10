<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enfermedades.aspx.cs" Inherits="Consultorio_Medico.Enfermedades1" %>

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
    <h1 style="background-color: #4DE6A8">Enfermedades</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Nombre de la enfermedad: " CssClass="auto-style1"></asp:Label>
            <asp:TextBox ID="TextBoxnombre" runat="server" Width="135px" OnTextChanged="TextBoxnombre_TextChanged" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar Enfermedad" BackColor="#99CCFF" CssClass="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar al inicio" BackColor="#99CCFF" CssClass="auto-style1" />
            <br />
        </div>
    </form>
</body>
</html>