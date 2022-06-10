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
    public partial class Enfermedades1 : System.Web.UI.Page
    {
        static List<Enfermedades> enfermedades = new List<Enfermedades>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var identidad = (FormsIdentity)Context.User.Identity;
            if (identidad.Ticket.UserData != "2")
            {
                Response.Redirect("Contact", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Enfermedades enfermeda = new Enfermedades();
            enfermeda.Nombre_Enfermedad = TextBoxnombre.Text;
            enfermedades.Add(enfermeda);
            Guardar_Json();
            TextBoxnombre.Text = "";
            Response.Write("<script>alert('¡Enfermedad añadida correctamente!')</script>");
        }
        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(enfermedades);
            string archivo = Server.MapPath("Enfermedades.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default",true);
        }

        protected void TextBoxnombre_TextChanged(object sender, EventArgs e)
        {

        }
    }
}