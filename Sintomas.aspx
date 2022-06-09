<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sintomas.aspx.cs" Inherits="Consultorio_Medico.Sintomas1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Codigo del sintoma:
            <asp:TextBox ID="TextBoxCodigoSintoma" runat="server"></asp:TextBox>
        </div>
        <p>
            Nombre del sintoma:
            <asp:TextBox ID="TextBoxNombreSintoma" runat="server"></asp:TextBox>
        </p>
        <p>
            Descripcion del sintoma:
        </p>
        <p>
            <asp:TextBox ID="TextBoxDescripcionSintoma" runat="server" Height="126px" Width="348px" Columns="10" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Agregar Sintoma" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar al inicio" />
        </p>
    </form>
</body>
</html>
