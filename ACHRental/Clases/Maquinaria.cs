using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ACHRental.Clases
{
    public class Maquinaria
    {
        private string id;
        private string nombre;
        private string marca;
        private string modelo;
        private string precio;
        private string descripcion;

        public Maquinaria(string id, string nombre, string marca, string modelo, string precio, string descripcion)
        {
            this.id = id;
            this.nombre = nombre;
            this.marca = marca;
            this.modelo = modelo;
            this.precio = precio;
            this.descripcion = descripcion;
        }

        public Maquinaria()
        {

        }


        public string Id { get => id; set => id = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Marca { get => marca; set => marca = value; }
        public string Modelo { get => modelo; set => modelo = value; }
        public string Precio { get => precio; set => precio = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
    }
}