<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistorialConsultaPaciente.aspx.cs" Inherits="Consultorio_Medico.HistorialConsultaPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="DPI del Paciente"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownListDPIPaciente" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Numero de Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownListNumerodeConsulta" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Visualizar" />
        <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Fecha Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxFecha" runat="server"></asp:TextBox>
        <br />
&nbsp;<asp:Label ID="Label3" runat="server" Text="Hora Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxHora" runat="server"></asp:TextBox>
        <br />
&nbsp;<br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="Precio Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxPrecio" runat="server"></asp:TextBox>
        <br />
&nbsp;Sintomas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBoxSintomas" runat="server"></asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;<asp:Label ID="Label7" runat="server" Text="Temperatura"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxTemperatura" runat="server"></asp:TextBox>
        <br />
&nbsp;<asp:Label ID="Label8" runat="server" Text="Diagnostico"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxDiagnostico" runat="server" Height="44px" Width="313px"></asp:TextBox>
        <br />
&nbsp;<asp:Label ID="Label9" runat="server" Text="Receta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBoxReceta" runat="server"></asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;<asp:Label ID="Label10" runat="server" Text="Imagenes"></asp:Label>
        <br />
&nbsp;<asp:Label ID="Label11" runat="server" Text="Fecha Nueva Consulta "></asp:Label>
        <asp:TextBox ID="TextBoxNuevaConsulta" runat="server"></asp:TextBox>
        <div>
        </div>
        <p>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Regresar a la consulta" />
        </p>
    </form>
</body>
</html>
