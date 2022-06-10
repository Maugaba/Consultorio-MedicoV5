<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta_Pacientes.aspx.cs" Inherits="Consultorio_Medico.Historial_Pacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ver Historial de Paciente" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="DPI del Paciente"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListDPIdelPAciente" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:Label ID="Label3" runat="server" Text="Hora Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxHora" runat="server"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Numero de Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxIdconsulta" runat="server"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="Precio Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListPrecio" runat="server">
                <asp:ListItem>Q200</asp:ListItem>
                <asp:ListItem>Q350</asp:ListItem>
                <asp:ListItem>Q500</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
&nbsp;Sintomas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListSintomas" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
            <br />
            <asp:GridView ID="GridViewSintomas" runat="server">
            </asp:GridView>
            <br />
&nbsp;<asp:Label ID="Label7" runat="server" Text="Temperatura"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxTemperatura" runat="server"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label8" runat="server" Text="Diagnostico"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxDiagnostico" runat="server" Height="44px" Width="313px" TextMode="MultiLine"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label9" runat="server" Text="Receta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListReceta" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Agregar medicamento" OnClick="Button2_Click" />
            <br />
            <asp:GridView ID="GridViewmedicina" runat="server">
            </asp:GridView>
            <br />
&nbsp;<asp:Label ID="Label10" runat="server" Text="Imagenes"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUploadImage" runat="server" />
&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Agregar imagen" Width="140px" />
            <br />
            <asp:GridView ID="GridViewImagen" runat="server">
            </asp:GridView>
            <br />
            <br />
&nbsp;<asp:Label ID="Label11" runat="server" Text="Nueva Consulta (no seleccione Fecha si no habra)"></asp:Label>
            <asp:Calendar ID="CalendarNuevaConsulta" runat="server"></asp:Calendar>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Agregar Consulta" OnClick="Button3_Click" />
&nbsp;
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Regresar al inicio" />
            <br />
        </div>
    </form>
</body>
</html>
