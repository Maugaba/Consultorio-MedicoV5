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
    public partial class AgendaEditar : System.Web.UI.Page
    {
        static List<Agenda> agendas = new List<Agenda>();

        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Agenda.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                agendas = JsonConvert.DeserializeObject<List<Agenda>>(json);
            }

            foreach (var a in agendas)
            {
                if (!IsPostBack)
                {
                    DropDownListDPIPaciente.Items.Add(a.DPI_del_paciente);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (var a in agendas)
            {
                if (a.DPI_del_paciente == DropDownListDPIPaciente.Text)
                {
                    a.Fecha = CalendarFecha.SelectedDate;
                    a.Hora_de_inicio_cita = TextBoxHoraIncio.Text;
                    a.Hora_de_finalizacion_cita = TextBoxHoraFin.Text;
                }
            }
            Guardar_Json();
            TextBoxHoraFin.Text = "";
            TextBoxHoraIncio.Text = "";
            Response.Write("<script>alert('¡Cita Modificada correctamente!')</script>");
        }

        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(agendas);
            string archivo = Server.MapPath("Agenda.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agenda", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach (var a in agendas)
            {
               if(a.DPI_del_paciente == DropDownListDPIPaciente.Text)
                {
                    CalendarFecha.SelectedDate = a.Fecha;
                    TextBoxHoraIncio.Text = a.Hora_de_inicio_cita;
                    TextBoxHoraFin.Text = a.Hora_de_finalizacion_cita;
                }
            }
        }
    }
}