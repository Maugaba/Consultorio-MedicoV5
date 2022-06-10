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
        static List<Sintomas> listsintomas = new List<Sintomas>();
        static List<Sintomasnombre> sintomas = new List<Sintomasnombre>();
        static List<HistorialPaciente> consulta = new List<HistorialPaciente>();
        static List<Medicamentos> listmedicamento = new List<Medicamentos>();
        static List<Medicamentosnombre> medicina = new List<Medicamentosnombre>();
        static List<ImagenesConsulta> imagenes = new List<ImagenesConsulta>();
        static List<Enfermedadnombre> enfermedades = new List<Enfermedadnombre>();
        static List<Enfermedades> listenfermedades = new List<Enfermedades>();
        static List<DineroIngresado> dinero = new List<DineroIngresado>();
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
                if (!IsPostBack)
                {
                    DropDownListDPIdelPAciente.Items.Add(a.DPI);
                }
                
            }

            string archivo1 = Server.MapPath("Sintomas.json");
            StreamReader jsonStream1 = File.OpenText(archivo1);
            string json1 = jsonStream1.ReadToEnd();
            jsonStream1.Close();

            if (json1.Length > 0)
            {
                listsintomas = JsonConvert.DeserializeObject<List<Sintomas>>(json1);
            }

            foreach (var a in listsintomas)
            {
                if (!IsPostBack)
                {
                    DropDownListSintomas.Items.Add(a.Nombre_Sintoma);
                }
                    
            }
            string archivo2 = Server.MapPath("Medicamento.json");
            StreamReader jsonStream2 = File.OpenText(archivo2);
            string json2 = jsonStream2.ReadToEnd();
            jsonStream2.Close();

            if (json2.Length > 0)
            {
                listmedicamento = JsonConvert.DeserializeObject<List<Medicamentos>>(json2);
            }

            foreach (var a in listmedicamento)
            {
                if (!IsPostBack)
                {
                    DropDownListReceta.Items.Add(a.nombre);
                }
            }
            string archivo3 = Server.MapPath("Enfermedades.json");
            StreamReader jsonStream3 = File.OpenText(archivo3);
            string json3 = jsonStream3.ReadToEnd();
            jsonStream3.Close();

            if (json3.Length > 0)
            {
                listenfermedades = JsonConvert.DeserializeObject<List<Enfermedades>>(json3);
            }

            foreach (var a in listenfermedades)
            {
                if (!IsPostBack)
                {
                    DropDownListEnfermedades.Items.Add(a.Nombre_Enfermedad);
                }
                
            }
            string archivo4 = Server.MapPath("Dinero.json");
            StreamReader jsonStream4 = File.OpenText(archivo4);
            string json4 = jsonStream4.ReadToEnd();
            jsonStream4.Close();

            if (json4.Length > 0)
            {
                dinero = JsonConvert.DeserializeObject<List<DineroIngresado>>(json4);
            }

            string archivo5 = Server.MapPath("Consulta.json");
            StreamReader jsonStream5 = File.OpenText(archivo5);
            string json5 = jsonStream5.ReadToEnd();
            jsonStream5.Close();

            if (json5.Length > 0)
            {
                listenfermedades = JsonConvert.DeserializeObject<List<Enfermedades>>(json5);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("HistorialConsultaPaciente", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DineroIngresado cash = new DineroIngresado();
            cash.dinero = DropDownListPrecio.Text;
            cash.fecha = DateTime.Today;
            dinero.Add(cash);
            Guardar_Dinero();
            HistorialPaciente paciente = new HistorialPaciente();
            paciente.Dpi_del_paciente = DropDownListDPIdelPAciente.Text;
            paciente.Fecha_Consulta = DateTime.Today;
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
            foreach(var a in listsintomas)
            {
                if(a.Nombre_Sintoma == DropDownListSintomas.Text)
                {
                    a.conteo++;
                }
            }
            Sintomasnombre sinto = new Sintomasnombre();
            sinto.nombre = DropDownListSintomas.Text;
            sintomas.Add(sinto);
            GridViewSintomas.DataSource = sintomas;
            GridViewSintomas.DataBind();
        }

        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(consulta);
            string archivo = Server.MapPath("Consulta.json");
            File.WriteAllText(archivo, json);
        }

        void Guardar_Dinero()
        {
            string json = JsonConvert.SerializeObject(dinero);
            string archivo = Server.MapPath("Dinero.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (var a in listmedicamento)
            {
                if (a.nombre == DropDownListReceta.Text)
                {
                    a.conteo++;
                }
            }
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

        protected void Button7_Click(object sender, EventArgs e)
        {
            foreach (var a in listenfermedades)
            {
                if (a.Nombre_Enfermedad == DropDownListEnfermedades.Text)
                {
                    a.conteo++;
                }
            }
            Enfermedadnombre enfermedad = new Enfermedadnombre();
            enfermedad.nombre = DropDownListEnfermedades.Text;
            enfermedades.Add(enfermedad);
            listenfermedades.Clear();
            GridViewEnfermedades.DataSource = enfermedades;
            GridViewEnfermedades.DataBind();
        }

        protected void DropDownListSintomas_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}