<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Venta.aspx.cs" Inherits="ACHRental.webpages.Venta" %>

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
         <section class="sectofertas1">
            <h2 align="center">Ventas</h2>
               
                 <table class="ofertas">
                    <tr>
                    <td>
                        <img src="../img/camiones.jpg" />
                        <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 629.990</p>
                        <a href="Producto2.aspx">Ver mas...</a>
                    </td>
                    
                    <td>
                         <img src="../img/camiones.jpg" />
                        <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 137.900</p>
                        <a href="Producto1.aspx">Ver mas...</a>
                    </td>
                    <td>
                 <img src="../img/camiones.jpg" />
                         <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 35.400</p>
                        <a href="Producto3.aspx">Ver mas...</a>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <img src="../img/camiones.jpg" />
                           <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 229.800</p>
                        <a href="Producto4.aspx">Ver mas...</a>
                    </td>
                    
                    <td>
                     <img src="../img/camiones.jpg" />
                            <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 66.990</p>
                    </td>
                    <td>
                    <img src="../img/camiones.jpg" />
                             <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 76.990</p>
                    </td>
                   </tr>
                    <tr>
                    <td>
                      <img src="../img/camiones.jpg" />
                            <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 68.900</p>
                    </td>
                    <td>
                     <img src="../img/camiones.jpg" />
                           <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 23.990</p>
                    </td>
                    <td>
                      <img src="../img/camiones.jpg" />
                             <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 74.990</p>
                    </td>
                        </tr>
                    <tr>
                    <td>
                      <img src="../img/camiones.jpg" />
                            <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 79.990</p>
                    </td>
                    <td>
                      <img src="../img/camiones.jpg" />
                             <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 49.900</p>
                    </td>
                    <td>
                        <img src="../img/camiones.jpg" />
                            <p id="nomprod">camion de carga</p>
                        <p id="precio">$ 208.990</p>
                    </td>
                        </tr>
                </table>




                
            </section>
       
        
  
  
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
