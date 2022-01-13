using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACHRental.Clases;
using ACHRental.Controller;

namespace ACHRental.webpages
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            LbMensaje.Text = UsuarioController.addUsuario(TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtEmail.Text, TxtContrasena.Text); ;
            Response.Redirect("Login.aspx");


        }
    }
}