using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Cliente
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int Dni { get; set; }
        public string Mail { get; set; }
        public string Telefono { get; set; }
        public string Estado { get; set; }
        public string Observaciones { get; set; }
    }
}
