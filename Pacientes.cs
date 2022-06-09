using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Consultorio_Medico
{
    public class Pacientes
    {
        public string DPI { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Direccion { get; set; }
        public DateTime Fecha_de_Nacimiento { get; set; }
        public string Telefono { get; set; }
    }
}