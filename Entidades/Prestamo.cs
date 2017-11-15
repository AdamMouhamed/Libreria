using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Prestamo
    {
        public int Id { get; set; }
        public int Id_Libro { get; set; }
        public int Id_Cliente { get; set; }
        public DateTime FechaPedido { get; set; }
        public DateTime FechaDevolucion { get; set; }
        public string Estado { get; set; }
        public string Observaciones { get; set; }
    }
}
