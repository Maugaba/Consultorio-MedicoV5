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
    public partial class Medicamentos1 : System.Web.UI.Page
    {
        static List<Enfermedades> Listenfermedades = new List<Enfermedades>();
        static List<Enfermedades> enfermedades = new List<Enfermedades>();
        static List<Medicamentos> MedicamentosList = new List<Medicamentos>();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownListenfermedades.Items.Clear();
            var identidad = (FormsIdentity)Context.User.Identity;
            if (identidad.Ticket.UserData != "2")
            {
                Response.Redirect("Contact", true);
            }
            string archivo = Server.MapPath("Enfermedades.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                enfermedades = JsonConvert.DeserializeObject<List<Enfermedades>>(json);
            }

            foreach (var a in enfermedades)
            {
                DropDownListenfermedades.Items.Add(a.Nombre_Enfermedad);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Enfermedades enfermedad = new Enfermedades();
            enfermedad.Nombre_Enfermedad = DropDownListenfermedades.Text;
            Listenfermedades.Add(enfermedad);
            GridViewenfermedades.DataSource = Listenfermedades;
            GridViewenfermedades.DataBind();
            enfermedades.Clear();
        }

        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(MedicamentosList);
            string archivo = Server.MapPath("Medicamento.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Medicamentos medicina = new Medicamentos();
            medicina.Codigo_Medicamento = TextBoxcodigo.Text;
            medicina.nombre = TextBoxnombre.Text;
            medicina.Dosis = TextBoxdosis.Text;
            medicina.Ingrediente_Generico = TextBoxIngrediente.Text;
            medicina.Enfermedades = Listenfermedades.ToArray().ToList();
            medicina.Horas_de_administracion = TextBoxhora.Text;
            medicina.Laboratorio = TextBoxlab.Text;
            MedicamentosList.Add(medicina);
            Guardar_Json();
            Listenfermedades.Clear();
            TextBoxcodigo.Text = "";
            TextBoxdosis.Text = "";
            TextBoxhora.Text = "";
            TextBoxlab.Text = "";
            TextBoxIngrediente.Text = "";
            TextBoxnombre.Text = "";
            Response.Write("<script>alert('¡Medicamento añadido correctamente!')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("default",true);
        }
    }
}