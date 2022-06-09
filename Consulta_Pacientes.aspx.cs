using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consultorio_Medico
{
    public partial class Historial_Pacientes : System.Web.UI.Page
    {
        List<Pacientes> pacientes = new List<Pacientes>(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Pacientes.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                pacientes = JsonConvert.DeserializeObject<List<Pacientes>>(json);
            }

            foreach (var a in pacientes)
            {
                DropDownListDPIdelPAciente.Items.Add(a.DPI);
            }
            var identidad = (FormsIdentity)Context.User.Identity;
            if (identidad.Ticket.UserData != "2")
            {
                Response.Redirect("Contact", true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("HistorialConsultaPaciente", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            HistorialPaciente paciente = new HistorialPaciente();
            paciente.Dpi_del_paciente = DropDownListDPIdelPAciente.Text;
            paciente.Fecha_Consulta = DateTime.Now;
            paciente.Hora_Consulta = TextBoxHora.Text;
            paciente.ID_consulta = TextBoxIdconsulta.Text;
            paciente.Precio_consulta = DropDownListPrecio.Text;
            paciente.Sintoma = "f";
            paciente.Temperatura = TextBoxTemperatura.Text;
            paciente.Diagnostico = TextBoxDiagnostico.Text;
            paciente.Receta = "f";
            paciente.Imagenes = "";
            paciente.Nueva_visita = CalendarNuevaConsulta.SelectedDate;

        }
    }
}