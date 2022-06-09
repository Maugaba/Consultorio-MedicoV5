using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Consultorio_Medico
{
    public partial class Historial_Pacientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var identidad = (FormsIdentity)Context.User.Identity;
            if (identidad.Ticket.UserData != "2")
            {
                Response.Redirect("Contact", true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("HistorialConsultaPaciente", true);
        }
    }
}