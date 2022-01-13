using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ACHRental.Clases
{
    public class Usuario
    {
        private string rut;
        private string nombre;
        private string apellido;
        private string correo;
        private string constrasena;
        private Rol rol;

        public Usuario(string rut, string nombre, string apellido, string correo, string constrasena, Rol rol)
        {
            this.rut = rut;
            this.nombre = nombre;
            this.apellido = apellido;
            this.correo = correo;
            this.constrasena = constrasena;
            this.rol = rol;
        }


        public Usuario()
        {

        }
            


        public string Rut { get => rut; set => rut = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Constrasena { get => constrasena; set => constrasena = value; }
        public Rol Rol { get => rol; set => rol = value; }
    }
}