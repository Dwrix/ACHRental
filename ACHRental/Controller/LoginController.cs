using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ACHRental.Clases;

namespace ACHRental.Controller
{
    public class LoginController
    {
       



        public static Usuario login(string correo, string password)
        {
            foreach (Usuario usuario in UsuarioController.listaUsuarios())
            {
                if (usuario.Correo.Equals(correo))
                {
                    if (usuario.Constrasena.Equals(password))
                    {
                        return usuario;
                    }
                    else
                    {
                        return null;
                    }
                }

            }
            return null;
        }





    }
}