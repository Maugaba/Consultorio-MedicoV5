<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pacientes.aspx.cs" Inherits="Consultorio_Medico.Pacientes1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Pacientes</h1>
            <p>
                DPI del paciente:
                <asp:TextBox ID="TextBoxDPIPaciente" runat="server"></asp:TextBox>
            </p>
            <p>
                Nombre:
                <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
            </p>
            <p>
                Apellido:
                <asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
            </p>
            <p>
                Dirección:
                <asp:TextBox ID="TextBoxDireccion" runat="server"></asp:TextBox>
            </p>
            <p>
                Fecha de nacimiento: <asp:Calendar ID="CalendarNacimiento" runat="server"></asp:Calendar>
            </p>
            <p>
                Teléfono:
                <asp:TextBox ID="TextBoxTelefono" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar Paciente" />
            </p>
        </div>
    </form>
</body>
</html>
