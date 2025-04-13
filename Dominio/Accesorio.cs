using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Accesorio
    {
        public int Id { get; set; }

        public string Codigo { get; set; }

        public string Nombre { get; set; }

        public string Talles { get; set; }

        public int Precio { get; set; }

        public string Descripcion { get; set; }
               
        public string Imagen { get; set; }

        public int CantFavoritos { get; set; }

        public int IdSexo { get; set; }

        public Elemento Sexo { get; set; }

        public DateTime FechaIngreso { get; set; }
    }
}
