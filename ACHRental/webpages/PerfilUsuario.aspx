<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="ACHRental.webpages.PerfilUsuario" %>

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
    <style type="text/css">
        .auto-style1 {
            width: 902px;
            height: 156px;
            text-align: center;
            margin: auto;
        }

        .auto-style66 {
            margin: auto;
            width: 308px;
            text-align: center;
            height: 69px;
        }
    </style>
</head>

<body>
    <header class="titulo">
        <h1>ACHRental
           
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
    <main class="main-contenedor">
        <h2>Perfil</h2>

        <form id="form1" runat="server">
            <div class="nav-bg">
                <nav class="navegacion-principal contenedor">

                    <asp:LinkButton ID="LnkPublicar" runat="server" OnClick="LnkPublicar_Click">Publicar Maquina</asp:LinkButton>
                    <asp:LinkButton ID="LnkVer" runat="server" OnClick="LnkVer_Click">Ver Maquinas</asp:LinkButton>
                    <asp:LinkButton ID="LnkPerfil" runat="server" OnClick="LnkPerfil_Click">Modificar Perfil</asp:LinkButton>

                </nav>
            </div>

            <asp:Panel ID="Panel1" Visible="false" runat="server">
                <table align="center" class="tblRegistro">
                    <tr>
                        <td class="titregistro" colspan="2">Registro Maquinaria</td>

                    </tr>
                    <tr>
                        <td class="datoregistro">ID:</td>
                        <td>
                            <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td class="datoregistro">Nombre:</td>
                        <td>
                            <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="datoregistro">Marca:</td>
                        <td>
                            <asp:TextBox ID="TxtMarca" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="datoregistro">Modelo:</td>
                        <td>
                            <asp:TextBox ID="TxtModelo" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="datoregistro">Precio:</td>
                        <td>
                            <asp:TextBox ID="TxtPrecio" runat="server"></asp:TextBox>
                        </td>

                    </tr>

                    <tr>
                        <td class="datoregistro">Descripcion:</td>
                        <td>
                            <asp:TextBox ID="TxtDescripcion" runat="server" Height="91px" Width="261px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Button ID="BntEnviar" runat="server" Text="Registrar" OnClick="BntEnviar_Click" /></td>
                        <td>
                            <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label><br />
                        </td>
                    </tr>

                </table>
            </asp:Panel>

            <asp:Panel ID="Panel2" Visible="false" runat="server">

                <div class="auto-style1">
                    <asp:GridView ID="GrdLista" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="907px" Height="151px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </div>
                <section class="auto-style66">
                    <asp:TextBox ID="TxtBuscar" placeholder="Ingrese código" runat="server"></asp:TextBox>
                    <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
                    <br />
                    <asp:Label ID="LbMensaje1" runat="server" Text=""></asp:Label>

                </section>

                <asp:Panel ID="Panel4" Visible="false" runat="server">
                    <table align="center" class="tblRegistro">
                        <tr>
                            <td class="titregistro" colspan="2">Registro Maquinaria</td>

                        </tr>
                        <tr>
                            <td class="datoregistro">ID:</td>
                            <td>

                                <asp:Label ID="LbId" runat="server" Text="Label"></asp:Label>
                            </td>

                        </tr>
                        <tr>
                            <td class="datoregistro">Nombre:</td>
                            <td>

                                <asp:Label ID="LbNombre" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="datoregistro">Marca:</td>
                            <td>
                                <asp:Label ID="LbMarca" runat="server" Text="Label"></asp:Label>

                            </td>
                        </tr>

                        <tr>
                            <td class="datoregistro">Modelo:</td>
                            <td>

                                <asp:Label ID="LbModelo" runat="server" Text="Label"></asp:Label>


                            </td>
                        </tr>

                        <tr>
                            <td class="datoregistro">Precio:</td>
                            <td>
                                <asp:TextBox ID="TxtRegistroprecio"  Enabled="false" runat="server"></asp:TextBox>
                            </td>

                        </tr>

                        <tr>
                            <td class="datoregistro">Descripcion:</td>
                            <td>
                                <asp:TextBox ID="TxtRegistrodescripcion"  Enabled="false" runat="server" Height="91px" Width="261px"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>
                                <asp:Button ID="BtnEditar" runat="server" Text="Editar" OnClick="BtnEditar_Click" />
                                <asp:Button ID="BtnModificar" Visible="false" runat="server" Text="Modificar" OnClick="BtnModificar_Click" />
                                <asp:Button ID="BtnEliminar" Visible="false" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click" />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />

                            </td>
                        </tr>

                    </table>
                </asp:Panel>

            </asp:Panel>
            <asp:Panel ID="Panel3" Visible="false" runat="server">
                
            </asp:Panel>

        </form>

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
