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
            Enfermedades de las mas comunes a menos comunes:
            <br />
            <br />
            <asp:GridView ID="GridViewEnfermedades" runat="server">
            </asp:GridView>
            <br />
            Medicamentos de los mas recetados a los menos recetados:<asp:GridView ID="GridViewMedicamentosRecetados" runat="server" Height="170px" Width="203px">
            </asp:GridView>
            <br />
            Sintomas de los mas comunes a los menos comunes:<asp:GridView ID="GridViewSintomas" runat="server" Height="170px" Width="203px">
            </asp:GridView>
            <br />
            <br />
            Edad promedio:
            <asp:TextBox ID="TextBoxEdadPromedio" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dinero<br />
            Total de dinero:
            <asp:TextBox ID="TextBoxTotalDineroFecha1" runat="server" EnableTheming="True" OnTextChanged="TextBoxTotalDineroFecha1_TextChanged" TextMode="MultiLine" Width="230px"></asp:TextBox>
            <asp:TextBox ID="TextBoxTotalDineroFecha2" runat="server" TextMode="MultiLine" Width="187px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
