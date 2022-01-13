<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ACHRental.webpages.Registro" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preload" href="../css/normalice.css" as="style" />
    <link rel="stylesheet" href="../css/normalice.css" />
    <link rel="preload" href="../css/main.css" as="style" />
    <link rel="stylesheet" href="../css/main.css" />
    <link rel="preload" href="../css/font-awesome.css" as="style" />
    <link rel="stylesheet" href="../css/font-awesome.css" />
    <title>ACHRental</title>
     


</head>

<body>
    <header class="titulo">
        <h1>
            ACHRental
           
        </h1>
  
       <a href="PerfilUsuario.aspx" class="icono"> <span class="fa fa-user"></span></a>
    </header>
    <div class="nav-bg">
        <nav class="navegacion-principal contenedor">
            <a href="../Home.html">Home</a>
            <a href="Arriendo.aspx">Arriendo</a>
            <a href="Venta.aspx">Venta</a>
            <a href="#">Somos ACHrental</a>
            <div class="div-bs">
                <input type="text" placeholder="Buscar..." />
                <input type="submit" value="Buscar" />
            </div>
        </nav>
    </div>
    <main class="contenedor main-contenedor">

        <div class="formulario">
            <h3>Registro</h3>
            <form id="form1" runat="server">

                <asp:TextBox ID="TxtNombre" runat="server" placeholder="Ingrese Nombre"></asp:TextBox>
                <asp:TextBox ID="TxtApellido" runat="server" placeholder="Ingrese Apellido"></asp:TextBox>
                <asp:TextBox ID="TxtRut" runat="server" placeholder="Ingrese Rut"></asp:TextBox>
                <asp:TextBox ID="TxtEmail" runat="server" placeholder="Ingrese Email"></asp:TextBox>
                <asp:TextBox ID="TxtContrasena" runat="server" TextMode="Password" placeholder="Ingrese Contraseña"></asp:TextBox>

                <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
                <asp:Button ID="BtnLogin" runat="server" Text="Ingresar" OnClick="BtnLogin_Click" />



            </form>
        </div>
        
  
  
    </main>
    <footer class="footer">
        <div class="servicios-fo">
            <section class="servicio-fo">
                <img src="../img/logo_achrental.png" width="200" />
            </section>
            <section class="servicio-fo">
                <p>Nuestro Contactos</p>
                <p>contactos.achrental@gmail.com</p>
                <p>+56966781241</p>
            </section>
            <section class="servicio-fo">
                <p>Asistencia</p>
                <a href="#">Preguntas frecuentes</a>
                <a href="#">Terminos y Condiciones</a>
            </section>

        </div>
    </footer>
</body>

</html> 
