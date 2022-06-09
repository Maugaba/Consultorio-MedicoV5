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
    public partial class Pacientes1 : System.Web.UI.Page
    {
        static List<Pacientes> pacientes = new List<Pacientes>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Pacientes paciente = new Pacientes();
            paciente.DPI = TextBoxDPIPaciente.Text = "";
            paciente.Nombre = TextBoxNombre.Text = "";
            paciente.Apellido = TextBoxApellido.Text = "";
            paciente.Direccion = TextBoxDireccion.Text = "";
            paciente.Fecha_de_Nacimiento = CalendarNacimiento.SelectedDate;
            paciente.Telefono = TextBoxTelefono.Text = "";
            pacientes.Add(paciente);
            Guardar_Json();
            Response.Write("<script>alert('¡Paciente registrado con éxito!')</script>"); 
        }
        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(pacientes);
            string archivo = Server.MapPath("Pacientes.json");
            File.WriteAllText(archivo, json);

        }

        protected System.Void Button1_Click(System.Object sender, System.EventArgs e)
        {

        }
    }
}