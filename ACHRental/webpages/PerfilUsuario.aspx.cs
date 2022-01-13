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
    public partial class PerfilUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGrid();
            validarLogin();
        }

        public void cargarGrid()
        {

            GrdLista.DataSource = MaquinariaController.getAll();

            GrdLista.DataBind();

        }
        public void validarLogin()
        {
            //metodo validacion de session.
            if (Session["usuario"] == null)
            {
                Session["error"] = "Debe iniciar sesión";
                Response.Redirect("login.aspx");
            }

            
        }





        protected void LnkPublicar_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            cargarGrid();

        }

        protected void LnkVer_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            cargarGrid();
        }

        protected void LnkPerfil_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
            cargarGrid();
        }








      

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            cargarGrid();
            Maquinaria maquinaria = MaquinariaController.findSugerencia(TxtBuscar.Text);

            if (maquinaria != null)
            {

                Panel4.Visible = true;

                LbId.Text = maquinaria.Id;
                LbNombre.Text = maquinaria.Nombre;
                LbMarca.Text = maquinaria.Marca;
                LbModelo.Text = maquinaria.Modelo;
                TxtRegistroprecio.Text = maquinaria.Precio;
                TxtRegistrodescripcion.Text = maquinaria.Descripcion;


            }
            else
            {
                LbMensaje1.Text = " No encontrado";
                Panel4.Visible = false;
            }



        }

        protected void BntEnviar_Click(object sender, EventArgs e)
        {
            LbMensaje.Text = MaquinariaController.addMaquinas(TxtId.Text,TxtNombre.Text,TxtMarca.Text,TxtModelo.Text,TxtPrecio.Text,TxtDescripcion.Text);

            cargarGrid();
        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {

            TxtRegistrodescripcion.Enabled = true;
            TxtRegistroprecio.Enabled = true;
            BtnEliminar.Visible = true;
            BtnModificar.Visible = true;


        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            Label1.Text = MaquinariaController.editMaquinaria(TxtBuscar.Text, TxtRegistroprecio.Text, TxtRegistrodescripcion.Text);
            cargarGrid();
            Panel4.Visible = false;
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            Label1.Text = MaquinariaController.removeMaquinaria(TxtBuscar.Text);
            cargarGrid();
            Panel4.Visible = false;

        }
    }
}