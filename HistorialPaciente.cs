using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Consultorio_Medico
{
    public class HistorialPaciente
    {
        public string ID_consulta { get; set; }
        public string Dpi_del_paciente { get; set; }
        public DateTime Fecha_Consulta { get; set; }
        public string Hora_Consulta { get; set; }
        public string Temperatura { get; set; }
        public List<Sintomasnombre> Sintoma { get; set; }
        public string Diagnostico { get; set; }
        public List<Medicamentosnombre> Receta { get; set; }
        public DateTime Nueva_visita { get; set; }
        public string Precio_consulta { get; set; }
        public List<ImagenesConsulta> Imagenes { get; set; }
    }
}