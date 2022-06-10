<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="Consultorio_Medico.Agenda1" %>

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
    <h1 style="background-color: #4DE6A8; font-size: xx-large;">Agenda</h1>
    <form id="form1" runat="server">
        <p>
            <span class="auto-style1">&nbsp; DP1 del paciente:&nbsp; </span>
            <asp:DropDownList ID="DropDownListDPIPaciente" runat="server" style="margin-bottom: 0px" Width="266px" BackColor="#CCFFFF" CssClass="auto-style1">
            </asp:DropDownList>
        </p>
        <p>
            <span class="auto-style1">Fecha:
            </span>
            <asp:Calendar ID="CalendarFecha" runat="server" style="font-size: large"></asp:Calendar>
        </p>
        <p>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Hora de inicio:&nbsp; </span>
            <asp:TextBox ID="TextBoxHoraIncio" runat="server" BackColor="#CCFFFF" BorderColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
        </p>
        <div>
            <span class="auto-style1">&nbsp;Hora de finalización:
            </span>
            <asp:TextBox ID="TextBoxHoraFin" runat="server" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Programar Cita" BackColor="#99CCFF" CssClass="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar al inicio" BackColor="#99CCFF" CssClass="auto-style1" />
        </div>
    </form>
</body>
</html>
