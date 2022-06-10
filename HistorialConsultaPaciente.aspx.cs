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
        List<Sintomasnombre> sintomas = new List<Sintomasnombre>();
        List<Medicamentosnombre> medicamentos = new List<Medicamentosnombre>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Consulta.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                historialPacientes = JsonConvert.DeserializeObject<List<HistorialPaciente>>(json);
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
                    sintomas = a.Sintoma.ToArray().ToList();
                    medicamentos = a.Receta.ToArray().ToList();
                    foreach (var b in sintomas)
                    {
                        ListBoxSintomas.Items.Add(b.nombre);
                    }
                    TextBoxTemperatura.Text = a.Temperatura;
                    TextBoxDiagnostico.Text = a.Diagnostico;
                    foreach (var b in medicamentos)
                    {
                        ListBoxReceta.Items.Add(b.nombre);
                    }
                    TextBoxNuevaConsulta.Text = a.Fecha_Consulta.ToString();
                    GridView1.DataSource = a.Imagenes;
                    GridView1.DataBind();
                }
            }
        }

    }
}