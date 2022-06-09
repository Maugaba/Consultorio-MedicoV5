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
    public partial class Agenda1 : System.Web.UI.Page
    {
        static List<Pacientes> pacientes = new List<Pacientes>();
        static List<Agenda> agendas = new List<Agenda>();

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
                DropDownListDPIPaciente.Items.Add(a.DPI);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Agenda agenda = new Agenda();
            agenda.DPI_del_paciente = DropDownListDPIPaciente.Text;
            agenda.Fecha = CalendarFecha.SelectedDate;
            agenda.Hora_de_inicio_cita = TextBoxHoraIncio.Text;
            agenda.Hora_de_finalizacion_cita = TextBoxHoraFin.Text;
            agendas.Add(agenda);
            Guardar_Json();
            TextBoxHoraFin.Text = "";
            TextBoxHoraIncio.Text = "";
            Response.Write("<script>alert('¡Cita creada correctamente!')</script>");
        }

        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(agendas);
            string archivo = Server.MapPath("Agenda.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default", true);
        }
    }
}