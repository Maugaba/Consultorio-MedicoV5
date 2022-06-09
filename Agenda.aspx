<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="Consultorio_Medico.Agenda1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Agenda</h1>
    <form id="form1" runat="server">
        <p>
            DP1 del paciente:
            <asp:TextBox ID="TextBoxDP1" runat="server"></asp:TextBox>
        </p>
        <p>
            Fecha:
            <asp:Calendar ID="CalendarFecha" runat="server"></asp:Calendar>
        </p>
        <p>
            Hora de inicio:
            <asp:TextBox ID="TextBoxHoraIncio" runat="server"></asp:TextBox>
        </p>
        <div>
            Hora de finalización:
            <asp:TextBox ID="TextBoxHoraFin" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
