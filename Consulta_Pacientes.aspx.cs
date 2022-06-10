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
        static List<Pacientes> pacientes = new List<Pacientes>();
        static List<Sintomasnombre> listsintomas = new List<Sintomasnombre>();
        static List<Sintomasnombre> sintomas = new List<Sintomasnombre>();
        static List<HistorialPaciente> consulta = new List<HistorialPaciente>();
        static List<Medicamentosnombre> listmedicamento = new List<Medicamentosnombre>();
        static List<Medicamentosnombre> medicina = new List<Medicamentosnombre>();
        static List<ImagenesConsulta> imagenes = new List<ImagenesConsulta>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var identidad = (FormsIdentity)Context.User.Identity;
            if (identidad.Ticket.UserData != "2")
            {
                Response.Redirect("Contact", true);
            }
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

            string archivo1 = Server.MapPath("Sintomasnombre.json");
            StreamReader jsonStream1 = File.OpenText(archivo1);
            string json1 = jsonStream1.ReadToEnd();
            jsonStream1.Close();

            if (json1.Length > 0)
            {
                listsintomas = JsonConvert.DeserializeObject<List<Sintomasnombre>>(json1);
            }

            foreach (var a in listsintomas)
            {
                DropDownListSintomas.Items.Add(a.nombre);
            }
            string archivo2 = Server.MapPath("Medicamentosnombre.json");
            StreamReader jsonStream2 = File.OpenText(archivo2);
            string json2 = jsonStream2.ReadToEnd();
            jsonStream2.Close();

            if (json2.Length > 0)
            {
                listmedicamento = JsonConvert.DeserializeObject<List<Medicamentosnombre>>(json2);
            }

            foreach (var a in listmedicamento)
            {
                DropDownListReceta.Items.Add(a.nombre);
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
            paciente.Sintoma = sintomas.ToArray().ToList();
            paciente.Temperatura = TextBoxTemperatura.Text;
            paciente.Diagnostico = TextBoxDiagnostico.Text;
            paciente.Receta = medicina.ToArray().ToList();
            paciente.Imagenes = imagenes.ToArray().ToList();
            paciente.Nueva_visita = CalendarNuevaConsulta.SelectedDate;
            consulta.Add(paciente);
            Guardar_Json();
            medicina.Clear();
            sintomas.Clear();
            TextBoxHora.Text = "";
            TextBoxIdconsulta.Text = "";
            TextBoxTemperatura.Text = "";
            TextBoxDiagnostico.Text = "";
            Response.Write("<script>alert('¡Consulta añadida con exito!')</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sintomasnombre sinto = new Sintomasnombre();
            sinto.nombre = DropDownListSintomas.Text;
            sintomas.Add(sinto);
            listsintomas.Clear();
            GridViewSintomas.DataSource = sintomas;
            GridViewSintomas.DataBind();
        }

        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(consulta);
            string archivo = Server.MapPath("Consulta.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Medicamentosnombre med = new Medicamentosnombre();
            med.nombre = DropDownListReceta.Text;
            medicina.Add(med);
            listmedicamento.Clear();
            GridViewmedicina.DataSource = medicina;
            GridViewmedicina.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ImagenesConsulta imagen = new ImagenesConsulta();
            string archivoOrigen = Path.GetFileName(FileUploadImage.FileName);
            try
            {
                FileUploadImage.SaveAs(Server.MapPath("~/imagenes/") + archivoOrigen);
                Response.Write("<script>alert('¡Exitosamente Subido!')</script>");
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert(¡La imagen no se pudo subir¡')</script>");
            }
            string archivo = "~/imagenes/" + FileUploadImage.FileName;
            imagen.Nombreimagen = archivo;
            imagenes.Add(imagen);
            GridViewImagen.DataSource = imagenes;
            GridViewImagen.DataBind();
            Guardar();
        }

        void Guardar()
        {
            string json = JsonConvert.SerializeObject(imagenes);
            string archivo = Server.MapPath("Imagenes.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("default", true);
        }
    }
}