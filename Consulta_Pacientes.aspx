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
            <h1 style="background-color: #4DE6A8">
                <asp:Label ID="Label12" runat="server" Text="Consulta de pacientes:"></asp:Label>
            </h1>
            &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ver Historial de Paciente" BackColor="#CCFFFF" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="DPI del Paciente"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListDPIdelPAciente" runat="server" BackColor="#CCFFFF">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:Label ID="Label3" runat="server" Text="Hora Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxHora" runat="server" BackColor="#CCFFFF"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Numero de Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxIdconsulta" runat="server" BackColor="#CCFFFF"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="Precio Consulta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListPrecio" runat="server" BackColor="#CCFFFF">
                <asp:ListItem>Q200</asp:ListItem>
                <asp:ListItem>Q350</asp:ListItem>
                <asp:ListItem>Q500</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
&nbsp;Sintomas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListSintomas" runat="server" BackColor="#CCFFFF" OnSelectedIndexChanged="DropDownListSintomas_SelectedIndexChanged">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" BackColor="#CCFFFF" />
            <br />
            <asp:GridView ID="GridViewSintomas" runat="server" BackColor="#CCFFFF">
            </asp:GridView>
            <br />
&nbsp;<asp:Label ID="Label7" runat="server" Text="Temperatura"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxTemperatura" runat="server" BackColor="#CCFFFF"></asp:TextBox>
            <br />
            <br />
&nbsp;Enfermedades&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListEnfermedades" runat="server" BackColor="#CCFFFF">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Agregar" BackColor="#CCFFFF" />
            <br />
            <asp:GridView ID="GridViewEnfermedades" runat="server" BackColor="#CCFFFF">
            </asp:GridView>
            <br />
&nbsp;<asp:Label ID="Label8" runat="server" Text="Diagnostico"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxDiagnostico" runat="server" Height="44px" Width="313px" TextMode="MultiLine" BackColor="#CCFFFF"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label9" runat="server" Text="Receta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListReceta" runat="server" BackColor="#CCFFFF">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Agregar medicamento" OnClick="Button2_Click" BackColor="#CCFFFF" />
            <br />
            <asp:GridView ID="GridViewmedicina" runat="server" BackColor="#CCFFFF">
            </asp:GridView>
            <br />
&nbsp;<asp:Label ID="Label10" runat="server" Text="Imagenes"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUploadImage" runat="server" BackColor="#CCFFFF" />
&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Agregar imagen" Width="140px" BackColor="#CCFFFF" />
            <br />
            <asp:GridView ID="GridViewImagen" runat="server" BackColor="#CCFFFF">
            </asp:GridView>
            <br />
            <br />
&nbsp;<asp:Label ID="Label11" runat="server" Text="Nueva Consulta (no seleccione Fecha si no habra)"></asp:Label>
            <asp:Calendar ID="CalendarNuevaConsulta" runat="server" BackColor="#CCFFFF"></asp:Calendar>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Agregar Consulta" OnClick="Button3_Click" BackColor="#CCFFFF" />
&nbsp;
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Regresar al inicio" BackColor="#CCFFFF" />
            <br />
        </div>
    </form>
</body>
</html>
