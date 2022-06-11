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
    public partial class Sintomaseditar : System.Web.UI.Page
    {
        static List<Sintomas> listsintomas = new List<Sintomas>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Sintomas.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                listsintomas = JsonConvert.DeserializeObject<List<Sintomas>>(json);
            }

            foreach (var a in listsintomas)
            {
                if (!IsPostBack)
                {
                    DropDownList1.Items.Add(a.Codigo_Sintoma);
                }
            }
        }

        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(listsintomas);
            string archivo = Server.MapPath("Sintomas.json");
            File.WriteAllText(archivo, json);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            foreach (var a in listsintomas)
            {
                if (a.Codigo_Sintoma == DropDownList1.Text)
                {
                    a.Nombre_Sintoma = TextBoxNombreSintoma.Text;
                    a.Descripcion_Sintoma = TextBoxDescripcionSintoma.Text;
                }
            }
            Guardar_Json();
            TextBoxNombreSintoma.Text = " ";
            TextBoxDescripcionSintoma.Text = " ";
            Response.Write("<script>alert('Sintoma editado con exito')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sintomas", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach (var a in listsintomas)
            {
                if (a.Codigo_Sintoma == DropDownList1.Text)
                {
                    TextBoxNombreSintoma.Text = a.Nombre_Sintoma;
                    TextBoxDescripcionSintoma.Text = a.Descripcion_Sintoma;
                }
            }
        }
    }
}