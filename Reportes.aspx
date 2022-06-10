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
            <h1 style="background-color: #4DE6A8">
                <asp:Label ID="Label1" runat="server" Text="Reportes:"></asp:Label>
            </h1>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Enfermedades de las mas comunes a menos comunes: "></asp:Label>
            <br />
            <asp:GridView ID="GridViewEnfermedades" runat="server" BackColor="#CCFFFF" Font-Size="Large">
            </asp:GridView>
            <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Medicamentos de los mas recetados a los menos recetados:"></asp:Label>
            <br />
            <asp:GridView ID="GridViewMedicamentosRecetados" runat="server" Height="170px" Width="203px" BackColor="#CCFFFF" Font-Size="Large">
            </asp:GridView>
            <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Sintomas de los mas comunes a los menos comunes:"></asp:Label>
            <br />
            <asp:GridView ID="GridViewSintomas" runat="server" Height="170px" Width="203px" BackColor="#CCFFFF" Font-Size="Large">
            </asp:GridView>
            <br />
            <br />
            &nbsp;<asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Edad promedio:"></asp:Label>
            <asp:TextBox ID="TextBoxEdadPromedio" runat="server" BackColor="#CCFFFF" Font-Size="Large"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dinero<br />
            &nbsp;<asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Total de dinero:"></asp:Label>
            <asp:TextBox ID="TextBoxTotalDineroFecha1" runat="server" EnableTheming="True" OnTextChanged="TextBoxTotalDineroFecha1_TextChanged" TextMode="MultiLine" Width="230px" BackColor="#CCFFFF" Font-Size="Large"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonRegresarInicio" runat="server" BackColor="#CCFFFF" Font-Size="Large" Text="Regresar al inicio" OnClick="ButtonRegresarInicio_Click" />
        </div>
    </form>
</body>
</html>
