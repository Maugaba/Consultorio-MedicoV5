using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consultorio_Medico
{
    public partial class HistorialConsultaPaciente : System.Web.UI.Page
    {
        List<HistorialPaciente> historialPacientes = new List<HistorialPaciente>();
        List<Sintomas> sintomas = new List<Sintomas>();
        List<Enfermedades> enfermedades = new List<Enfermedades>();
        List<Medicamentos> medicamentos = new List<Medicamentos>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Consulta.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                historialPacientes = JsonConvert.DeserializeObject<List<HistorialPaciente>>(json);
                sintomas = JsonConvert.DeserializeObject<List<Sintomas>>(json);
                enfermedades = JsonConvert.DeserializeObject<List<Enfermedades>>(json);
                medicamentos = JsonConvert.DeserializeObject<List<Medicamentos>>(json);
            }
            foreach (var a in historialPacientes)
            {
                DropDownListDPIPaciente.Items.Add(a.Dpi_del_paciente);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consulta_Pacientes",true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            foreach (var a in historialPacientes)
            {
                if(a.Dpi_del_paciente == DropDownListDPIPaciente.Text)
                {
                    TextBoxConsulta.Text = a.ID_consulta;
                    TextBoxFecha.Text = a.Fecha_Consulta.ToString();
                    TextBoxHora.Text = a.Hora_Consulta;
                    TextBoxPrecio.Text = a.Precio_consulta;
                    foreach (var b in sintomas)
                    {
                        ListBoxSintomas.Items.Add(b.Nombre_Sintoma);
                    }
                    TextBoxTemperatura.Text = a.Temperatura;
                    foreach (var c in enfermedades)
                    {
                        ListBoxEnfermedades.Items.Add(c.Nombre_Enfermedad);
                    }
                    TextBoxDiagnostico.Text = a.Diagnostico;
                    foreach (var d in medicamentos)
                    {
                        ListBoxReceta.Items.Add(d.nombre);
                    }
                    TextBoxNuevaConsulta.Text = a.Fecha_Consulta.ToString();
                }
            }
        }

    }
}