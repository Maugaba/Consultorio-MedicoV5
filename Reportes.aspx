<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Consultorio_Medico.Reportes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enfermedades mas comunes:
            <br />
            <asp:ListBox ID="ListBoxEnfermedadesComunes" runat="server" Height="256px" Width="243px"></asp:ListBox>
            <br />
            <br />
            Edad promedio:
            <asp:TextBox ID="TextBoxEdadPromedio" runat="server"></asp:TextBox>
            <br />
            <br />
            Listado de medicamentos recetados:<asp:GridView ID="GridViewMedicamentosRecetados" runat="server" Height="220px" Width="286px">
            </asp:GridView>
            <br />
            Total de dinero entre 2 fechas:
            <asp:TextBox ID="TextBoxTotalDineroFecha1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBoxTotalDineroFecha2" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
