using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Consultorio_Medico
{
    public class Medicamentos
    {
        public string Codigo_Medicamento { get; set; }
        public string Ingrediente_Generico { get; set; }
        public string Laboratorio { get; set; }
        public List<Enfermedades> enfermedades { get; set; }
        public string Dosis { get; set; }
        public string Horas_de_administracion { get; set; }
    }
}