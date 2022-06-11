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
    public partial class Pacientes_Editar : System.Web.UI.Page
    {
        static List<Pacientes> pacientes = new List<Pacientes>();
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
                if (!IsPostBack)
                {
                    DropDownListDpi.Items.Add(a.DPI);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (var a in pacientes)
            {
                if (a.DPI == DropDownListDpi.Text)
                {
                    a.Nombre = TextBoxNombre.Text;
                    a.Apellido = TextBoxApellido.Text;
                    a.Direccion = TextBoxDireccion.Text;
                    a.Telefono = TextBoxTelefono.Text;
                    a.Fecha_de_Nacimiento = CalendarNacimiento.SelectedDate; ;
                }
            }
            TextBoxNombre.Text = "";
            TextBoxApellido.Text = "";
            TextBoxDireccion.Text = "";
            TextBoxTelefono.Text = "";
            Response.Write("<script>alert('¡Paciente editado con éxito!')</script>");
            string json = JsonConvert.SerializeObject(pacientes);
            string archivo = Server.MapPath("Pacientes.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach (var a in pacientes)
            {
                if(a.DPI == DropDownListDpi.Text)
                {
                    TextBoxNombre.Text = a.Nombre;
                    TextBoxApellido.Text = a.Apellido;
                    TextBoxDireccion.Text = a.Direccion;
                    TextBoxTelefono.Text = a.Telefono;
                    CalendarNacimiento.SelectedDate = a.Fecha_de_Nacimiento;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pacientes",true);
        }
    }
}