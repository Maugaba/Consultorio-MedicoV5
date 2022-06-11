﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgendaEditar.aspx.cs" Inherits="Consultorio_Medico.AgendaEditar" %>

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
    <h1 style="background-color: #4DE6A8; font-size: xx-large;">Agenda</h1>
        <p>
            <span class="auto-style1">&nbsp; DPI del paciente:&nbsp; </span>
            <asp:DropDownList ID="DropDownListDPIPaciente" runat="server" style="margin-bottom: 0px" Width="266px" BackColor="#CCFFFF" CssClass="auto-style1">
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Visualizar" BackColor="#99CCFF" CssClass="auto-style1" />
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
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Editar Cita" BackColor="#99CCFF" CssClass="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar" BackColor="#99CCFF" CssClass="auto-style1" />
        </div>
        </div>
    </form>
</body>
</html>
