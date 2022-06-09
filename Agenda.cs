using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Consultorio_Medico
{
    public class Agenda
    {
        public string DPI_del_paciente {get; set;}
        public DateTime Fecha {get; set;}
        public string Hora_de_inicio_cita {get; set;}
        public string Hora_de_finalizacion_cita {get; set;}

    }
}