using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Libro
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public DateTime AñoPub { get; set; }
        public bool Usado { get; set; }
        public int Id_Autor { get; set; }
        public string Categoria { get; set; }
        public string Genero { get; set; }
        public int CantPag { get; set; }
        public string Estado { get; set; }
        public string Observaciones { get; set; }
    }
}
