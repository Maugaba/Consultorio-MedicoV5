using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consultorio_Medico
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*var identidad = (FormsIdentity)Context.User.Identity;
            if (identidad.Ticket.UserData != "1")
            {
                Response.Redirect("AlgunaPagina", true);
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agenda", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pacientes", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consulta_Pacientes", true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Medicamentos", true);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sintomas", true);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Enfermedades", true);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reportes", true);
        }
    }
}