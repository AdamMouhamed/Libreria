using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.Types;

namespace Entidades
{
    public class Autor
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public MySqlDateTime FechaNacimiento { get; set; }
        public string Estado { get; set; }
    }
}
