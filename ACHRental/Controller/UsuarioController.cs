using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ACHRental.Clases;

namespace ACHRental.Controller
{
    public class UsuarioController
    {
        private static List<Usuario> listaUsuario = new List<Usuario>();
        public static void fillUsuario()
        {

            if (listaUsuario.Count == 0)
            {

                listaUsuario.Add(new Usuario("1-1", "admin", "admin", "admin@admin.cl", "12345678", new Rol(1, "cliente")));


            }



        }

        public static string addUsuario(string rut, string nombre,string apellido,string correo, string contrasena)
        {
            try
            {

                Usuario usuario = new Usuario()
                {
                     Rut= rut,
                    Nombre = nombre,
                    Apellido= apellido,
                    Correo=correo,
                    Constrasena = contrasena,
                    Rol = new Rol(2, "Cliente")

                };

                listaUsuario.Add(usuario);
                return "Registrado correctamente";
            }
            catch (Exception e)
            {
                return "Error: " + e.Message;
            }
        }

        public static List<Usuario> listaUsuarios()
        {
            return listaUsuario;
        }



    }
}