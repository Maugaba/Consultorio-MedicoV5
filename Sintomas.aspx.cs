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
    public partial class Sintomas1 : System.Web.UI.Page
    {
        static List<Sintomas> listsintomas = new List<Sintomas>();
        static List<Sintomasnombre> listsintomasnombre = new List<Sintomasnombre>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var identidad = (FormsIdentity)Context.User.Identity;
            if (identidad.Ticket.UserData != "2")
            {
                Response.Redirect("Contact", true);
            }
        }

        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(listsintomas);
            string archivo = Server.MapPath("Sintomas.json");
            File.WriteAllText(archivo, json);
            string json1 = JsonConvert.SerializeObject(listsintomasnombre);
            string archivo1 = Server.MapPath("Sintomasnombre.json");
            File.WriteAllText(archivo1, json1);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Sintomas sintomas = new Sintomas();
            Sintomasnombre sintomasnombre = new Sintomasnombre();
            sintomas.Codigo_Sintoma = TextBoxCodigoSintoma.Text;
            sintomas.Nombre_Sintoma = TextBoxNombreSintoma.Text;
            sintomasnombre.nombre = TextBoxNombreSintoma.Text;
            sintomas.Descripcion_Sintoma = TextBoxDescripcionSintoma.Text;
            listsintomas.Add(sintomas);
            listsintomasnombre.Add(sintomasnombre);
            Guardar_Json();
            TextBoxCodigoSintoma.Text = " ";
            TextBoxNombreSintoma.Text = " ";
            TextBoxDescripcionSintoma.Text = " ";
            Response.Write("<script>alert('Sintoma agregado con exito')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default", true);
        }
    }
}