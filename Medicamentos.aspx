<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medicamentos.aspx.cs" Inherits="Consultorio_Medico.Medicamentos1" %>

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
        <h1 style="background-color: #4DE6A8">
            &nbsp;&nbsp;&nbsp;&nbsp; Medicamentos&nbsp;</h1>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style1">&nbsp; </span>
            <asp:Label ID="Label1" runat="server" Text="Código del medicamento: " CssClass="auto-style1"></asp:Label>
&nbsp; <asp:TextBox ID="TextBoxcodigo" runat="server" Width="135px" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
        </p>
        <p>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nombre del medicamento: &nbsp; </span><asp:TextBox ID="TextBoxnombre" runat="server" Width="135px" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
        </p>
        <p>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:Label ID="Label2" runat="server" Text="Dosis: " CssClass="auto-style1"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBoxdosis" runat="server" Width="139px" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
        </p>
        <p>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ingrediente Generico: &nbsp;</span><asp:TextBox ID="TextBoxIngrediente" runat="server" Width="139px" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
        </p>
        <p>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="Label3" runat="server" Text="Enfermedades: " CssClass="auto-style1"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownListenfermedades" runat="server" Height="26px" Width="144px" BackColor="#CCFFFF" CssClass="auto-style1">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Button ID="Button1" runat="server" Text="Agregar enfermedad" Width="192px" OnClick="Button1_Click" BackColor="#99CCFF" CssClass="auto-style1" />
        </p>
        <p>
            <asp:GridView ID="GridViewenfermedades" runat="server" style="margin-left: 157px; font-size: large;" Width="271px">
            </asp:GridView>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        </p>
        <div>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Label ID="Label4" runat="server" Text="Intervalo de toma de medicamento: " CssClass="auto-style1"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBoxhora" runat="server" Width="139px" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
            <br class="auto-style1" />
        </div>
        <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Label ID="Label6" runat="server" Text="Casa laboratorista: " CssClass="auto-style1"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBoxlab" runat="server" Width="139px" BackColor="#CCFFFF" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Agregar Medicamento" Width="191px" BackColor="#99CCFF" CssClass="auto-style1" />
        <br class="auto-style1" />
        <br class="auto-style1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Regresar al inicio" BackColor="#99CCFF" CssClass="auto-style1" />
    </form>
</body>
</html>
