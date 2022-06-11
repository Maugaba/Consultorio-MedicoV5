<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sintomaseditar.aspx.cs" Inherits="Consultorio_Medico.Sintomaseditar" %>

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
                <asp:Label ID="Label4" runat="server" BorderColor="Black" Text="Sintomas"></asp:Label>
            </h1>
        </div>
        <p>
            &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" Text="Codigo del sintoma:   "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" style="font-size: large; background-color: #CCFFFF" Width="166px">
            </asp:DropDownList>
&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" Text="Visualizar" OnClick="Button3_Click" BackColor="#CCFFFF" Font-Size="Large" ForeColor="Black" />
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" Text="Nombre del sintoma:   "></asp:Label>
            <asp:TextBox ID="TextBoxNombreSintoma" runat="server" BackColor="#CCFFFF" Font-Size="Large"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Black" Text="Descripcion del sintoma:"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBoxDescripcionSintoma" runat="server" Height="126px" Width="348px" Columns="10" TextMode="MultiLine" BackColor="#CCFFFF" Font-Size="Large"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Editar Sintoma" OnClick="Button1_Click1" BackColor="#CCFFFF" Font-Size="Large" ForeColor="Black" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar" BackColor="#CCFFFF" Font-Size="Large" style="width: 112px" />
        </p>
    </form>
</body>
</html>
