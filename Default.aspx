<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Consultorio_Medico._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <h1 style="background-color: #4DE6A8"><span style="font-size: xx-large">INICIO</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>
        <div>
            <center>
                <asp:Button ID="Button2" runat="server" Height="100px" Text="Pacientes" Width="200px" OnClick="Button2_Click" BackColor="#99CCFF" style="font-size: large" />
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button1" runat="server" Height="100px" Text="Agenda" Width="200px" OnClick="Button1_Click" BackColor="#99CCFF" style="font-size: large" />
                <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <asp:Button ID="Button3" runat="server" Height="100px" Text="Consulta de Pacientes" Width="200px" OnClick="Button3_Click" BackColor="#99CCFF" style="font-size: large" />
        </center>  
    <div>
        <center>
            <asp:Button ID="Button4" runat="server" Height="100px" Text="Medicamentos" Width="200px" OnClick="Button4_Click" BackColor="#99CCFF" style="font-size: large" />
            <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</span><asp:Button ID="Button5" runat="server" Height="100px" Text="Sintomas" Width="200px" OnClick="Button5_Click" BackColor="#99CCFF" style="font-size: large" />
            <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <asp:Button ID="Button6" runat="server" Height="100px" Text="Enfermedades" Width="200px" OnClick="Button6_Click" BackColor="#99CCFF" style="font-size: large" />
            <br style="font-size: large" />
            <asp:Button ID="Button7" runat="server" Height="100px" OnClick="Button7_Click" Text="Reporte" Width="200px" BackColor="#99CCFF" style="font-size: large" />
        </center>
    <div>
        
        <br />
        
    </div>
        
    </div>
        
    </div>
        
    </div>
    </asp:Content>
