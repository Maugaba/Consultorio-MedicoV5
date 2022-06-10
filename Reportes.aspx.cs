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
    public partial class Reportes : System.Web.UI.Page
    {
        List<Enfermedades> enfermedades = new List<Enfermedades>();
        List<Medicamentos> medicamentos = new List<Medicamentos>();
        List<Pacientes> pacientes = new List<Pacientes>();
        List<DineroIngresado> dineroIngresado = new List<DineroIngresado>();
        List<Sintomas> sintomas = new List<Sintomas>();
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

            string archivo1 = Server.MapPath("Medicamento.json");
            StreamReader jsonStream1 = File.OpenText(archivo1);
            string json1 = jsonStream1.ReadToEnd();
            jsonStream1.Close();

            if (json1.Length > 0)
            {
                medicamentos = JsonConvert.DeserializeObject<List<Medicamentos>>(json1);
            }

            string archivo2 = Server.MapPath("Pacientes.json");
            StreamReader jsonStream2 = File.OpenText(archivo2);
            string json2 = jsonStream2.ReadToEnd();
            jsonStream2.Close();

            if (json2.Length > 0)
            {
                pacientes = JsonConvert.DeserializeObject<List<Pacientes>>(json2);
            }

            string archivo3 = Server.MapPath("Dinero.json");
            StreamReader jsonStream3 = File.OpenText(archivo3);
            string json3 = jsonStream3.ReadToEnd();
            jsonStream3.Close();

            if (json3.Length > 0)
            {
                dineroIngresado = JsonConvert.DeserializeObject<List<DineroIngresado>>(json3);
            }

            string archivo4 = Server.MapPath("Sintomas.json");
            StreamReader jsonStream4 = File.OpenText(archivo4);
            string json4 = jsonStream4.ReadToEnd();
            jsonStream4.Close();

            if (json4.Length > 0)
            {
                sintomas = JsonConvert.DeserializeObject<List<Sintomas>>(json4);
            }

            enfermedades = enfermedades.OrderByDescending(x => x.conteo).ToList();
            medicamentos = medicamentos.OrderByDescending(x => x.conteo).ToList();
            sintomas = sintomas.OrderByDescending(x => x.conteo).ToList();

            GridViewEnfermedades.DataSource = enfermedades;
            GridViewEnfermedades.DataBind();

            GridViewMedicamentosRecetados.DataSource = medicamentos;
            GridViewMedicamentosRecetados.DataBind();

            GridViewSintomas.DataSource = sintomas;
            GridViewSintomas.DataBind();

            int edad = 0;
            int promedio = 0;
            int contador = 0;
            foreach (var a in pacientes)
            {
                edad = DateTime.Today.AddTicks(-a.Fecha_de_Nacimiento.Ticks).Year - 1;
                promedio = promedio + edad;
                contador++;
            }
            promedio = promedio / contador;
            TextBoxEdadPromedio.Text = promedio.ToString();

            foreach(var a in dineroIngresado)
            {
                TextBoxTotalDineroFecha1.Text = TextBoxTotalDineroFecha1.Text + "  "+a.fecha.Day.ToString() +"/" + a.fecha.Month.ToString() +"/"+ a.fecha.Year.ToString() + "    " + a.dinero.ToString() + ".00\n";
            }


        }

        protected void TextBoxTotalDineroFecha1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonRegresarInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("default",true);
        }
    }
}