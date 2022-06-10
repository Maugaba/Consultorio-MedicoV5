<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pacientes.aspx.cs" Inherits="Consultorio_Medico.Pacientes1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: #000000; background-color: #4DE6A8; font-size: xx-large;">Pacientes</h1>
            <p dir="auto" style="font-weight: 300">
                &nbsp; <span class="auto-style1">DPI del paciente:</span>&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxDPIPaciente" runat="server" BackColor="#CCFFFF" style="font-size: large"></asp:TextBox>
            </p>
            <p style="font-size: large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Nombre:&nbsp;
                <asp:TextBox ID="TextBoxNombre" runat="server" BackColor="#CCFFFF" style="font-size: large"></asp:TextBox>
            </p>
            <p style="font-size: large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Apellido:&nbsp;
                <asp:TextBox ID="TextBoxApellido" runat="server" BackColor="#CCFFFF" style="font-size: large"></asp:TextBox>
            </p>
            <p style="font-size: large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Dirección:&nbsp;
                <asp:TextBox ID="TextBoxDireccion" runat="server" BackColor="#CCFFFF" style="font-size: large"></asp:TextBox>
            </p>
            <p style="font-size: large">
                Fecha de nacimiento: <asp:Calendar ID="CalendarNacimiento" runat="server"></asp:Calendar>
            </p>
            <p style="font-size: large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Teléfono:&nbsp;
                <asp:TextBox ID="TextBoxTelefono" runat="server" BackColor="#CCFFFF" style="font-size: large"></asp:TextBox>
            </p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar Paciente" BackColor="#99CCFF" style="font-size: large" />
            </p>
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar al inicio" BackColor="#99CCFF" style="font-size: large" />
            </p>
        </div>
    </form>
</body>
</html>
