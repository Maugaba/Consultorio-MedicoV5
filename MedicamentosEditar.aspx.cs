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
    public partial class MedicamentosEditar : System.Web.UI.Page
    {
        static List<Enfermedades> Listenfermedades = new List<Enfermedades>();
        static List<Enfermedades> enfermedades = new List<Enfermedades>();
        static List<Medicamentos> MedicamentosList = new List<Medicamentos>();
        protected void Page_Load(object sender, EventArgs e)
        {
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
                if (!IsPostBack)
                {
                    DropDownListenfermedades.Items.Add(a.Nombre_Enfermedad);
                }
            }
            string archivo1 = Server.MapPath("Medicamento.json");
            StreamReader jsonStream1 = File.OpenText(archivo1);
            string json1 = jsonStream1.ReadToEnd();
            jsonStream1.Close();

            if (json1.Length > 0)
            {
                MedicamentosList = JsonConvert.DeserializeObject<List<Medicamentos>>(json1);
            }

            foreach (var a in MedicamentosList)
            {
                if (!IsPostBack)
                {
                    DropDownList1.Items.Add(a.Codigo_Medicamento);
                }
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
            foreach (var a in MedicamentosList)
            {
                if (a.Codigo_Medicamento == DropDownList1.Text)
                {
                    a.nombre = TextBoxnombre.Text;
                    a.Dosis = TextBoxdosis.Text;
                    a.Ingrediente_Generico = TextBoxIngrediente.Text;
                    a.Enfermedades = Listenfermedades.ToArray().ToList();
                    a.Horas_de_administracion = TextBoxhora.Text;
                    a.Laboratorio = TextBoxlab.Text;
                }
            }
            Guardar_Json();
            Listenfermedades.Clear();
            TextBoxdosis.Text = "";
            TextBoxhora.Text = "";
            TextBoxlab.Text = "";
            TextBoxIngrediente.Text = "";
            TextBoxnombre.Text = "";
            Response.Write("<script>alert('¡Medicamento editado correctamente!')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("default", true);
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            foreach (var a in MedicamentosList)
            {
                if(a.Codigo_Medicamento == DropDownList1.Text)
                {
                    TextBoxnombre.Text = a.nombre;
                    TextBoxdosis.Text = a.Dosis;
                    TextBoxIngrediente.Text = a.Ingrediente_Generico;
                    enfermedades = a.Enfermedades.ToArray().ToList();
                    GridViewenfermedades.DataSource = enfermedades;
                    GridViewenfermedades.DataBind();
                    TextBoxhora.Text = a.Horas_de_administracion;
                    TextBoxlab.Text = a.Laboratorio;
                }
            }
        }
    }
}