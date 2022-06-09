<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enfermedades.aspx.cs" Inherits="Consultorio_Medico.Enfermedades1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Id Enfermedad: "></asp:Label>
            <asp:TextBox ID="TextBoxidenfermedad" runat="server" Width="135px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre de la enfermedad: "></asp:Label>
            <asp:TextBox ID="TextBoxnombre" runat="server" Width="135px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar Enfermedad" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>