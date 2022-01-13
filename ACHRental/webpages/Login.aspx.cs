using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACHRental.Controller;
using ACHRental.Clases;

namespace ACHRental.webpages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioController.fillUsuario();

            //recibir mensaje, si es que hay error
            if (Session["error"] != null)
            {
                LbMensaje.Text = Session["error"].ToString();
                Session["error"] = null;
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Usuario usuario = LoginController.login(TxtCorreo.Text, TxtPassword.Text);
            if (usuario != null)
            {
                Session["usuario"] = usuario;
                Response.Redirect("PerfilUsuario.aspx");
            }
            else
            {
                LbMensaje.Text = "Usuario y/o contrasea incorrectos.";
            }
        }
    }
}