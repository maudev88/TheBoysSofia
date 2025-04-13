<%@ Page Title="" Language="C#" MasterPageFile="~/TheMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Abemona.Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        body {
            background-color: #5ae7fb;
        }

        .portada {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            background-image: url('Imagenes/globos.jpg');
            background-size: cover;
        }

            #pee {
                font-size: 52px;
                font-weight: 400;
                position: relative;
                bottom: -210px;
            }

        h3 {
            font-size: 90px;
            font-weight: 100;
        }

        .estilo {
            height: 300px;
            background-image: url(Imagenes/5.jpg);
            width: 100%;
            background-color: rgba(0, 0, 0, 0.589);
            background-attachment: fixed;
            background-blend-mode: overlay;
            margin-top: 30px;
            margin-bottom: 60px;
            font-family: Arial, Helvetica, sans-serif;
            color: greenyellow;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .buscar {
            background-color: black;
            color: #e8ca01;
            font-weight: bolder;
            transition: transform .3s ease !important;
        }

            .buscar:hover {
                transform: scale(1.1) !important;
                background-color: black;
                color: #e8ca01;
            }

            .buscar:active {
                transform: scale(1.1) !important;
                background-color: black !important;
                color: #e8ca01 !important;
            }

        .botonn {
            font-weight: bolder;
            transition: transform .3s ease !important;
            font-family: Arial, Helvetica, sans-serif;
        }

            .botonn:hover {
                transform: scale(1.1) !important;
                background-color: #e2aed5;
                color: white;
            }



        @media screen and (max-width: 1399px) {
            .responsive {
                margin: 25px 0;
            }
        }

        .footer {
            display: flex;
            flex-wrap: wrap;
            margin-top: 70px;
            justify-content: center;
            background-color: #5ae7fb;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bolder;
            padding: 16px 70px;
            text-align: center;
            gap: 30px;
        }

            .footer p {
                margin: 0px;
            }

        h4 {
            font-weight: bolder;
        }

        .divColor {
            color: red;
            margin: 0px 50px;
            background-color: white;
            border-radius: 50%;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        #loUltimo {
            background-color: #5ae7fb !important;
            border-radius: 0% !important;
            flex-direction: row;
            padding-top: 13px;
        }

        .botonColeccion a {
            font-weight: bolder !important;
            transition: transform .3s ease !important;
            font-family: Quicksand;
            color: white !important;
        }

            .botonColeccion a:hover {
                transform: scale(1.1);
            }

        @media screen and (max-width: 991px) {

            .contP {
                width: 100% !important;
            }

                .contP p {
                    width: 100% !important;
                    padding: 0 45px;
                   
                }

            #pee {
                 bottom: 0px!important;
            }

            h3 {
                font-weight: bolder;
            }

            .portada p {
                font-size: 50px;
            }

            .imagYText {
                display: flex !important;
                flex-direction: column !important;
                justify-content: center !important;
                align-items: center !important;
                width: 100vw;
            }

            .portada img {
                width: 700px !important;
            }

            #logoAbe {
                width: 500px;
            }

            .botonn {
                font-size: 32px !important;
            }




            /* REPETIDOR*/

            .responsive {
                width: 100% !important;
            }


            .tarjeta {
                font-size: 35px;
            }

            .anchoCard {
                width: 400px !important;
            }

            .elh5 {
                font-size: 40px;
            }

            .imagen {
                max-height: 461px !important;
                max-width: 372px !important;
            }


            .desple1 {
                width: 300px !important;
                font-size: 35px !important;
            }

            .filtros {
                flex-direction: column;
                align-items: center;
            }

            .busqueda {
                font-size: 50px !important;
                text-align: center;
                margin: 0 60px;
            }

            .escriba {
                font-size: 40px !important;
                text-align: center;
                margin: 0 60px;
            }

            .tclass {
                width: 90vw !important;
                height: 70px;
                font-size: 40px !important;
            }




            /* FOOTER*/


            h4 {
                font-size: 40px;
            }

            .divColor p {
                font-size: 30px !important;
            }

            #loUltimo {
                font-size: 30px !important;
            }

            .divColor img {
                width: 200px !important;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="portada">
        <div>
            <img src="Imagenes/Portada.png" alt="Alternate Text" style="width: 700px;" />
        </div>
        <div class="imagYText" style="margin-top: 33px;">
            <div style="text-align: center;">
                <img src="Imagenes/LogoPortada.png" alt="Alternate Text" id="logoAbe" style="width: 703px;" />
            </div>
            <div class="contP" style="width: 600px; font-size: 40px; text-align: center;">
                <p style="font-family: Quicksand;" id="pee">
                    Indumentaria para niños
                
                </p>
            </div>
        </div>
    </div>




    <div style="background-color: #efefef !important;">

        <%--ESTILO--%>

        <div class="estilo">
            <h3>Colección</h3>
        </div>




        <asp:ScriptManager runat="server" />


        <asp:UpdatePanel runat="server">
            <ContentTemplate>






                <div style="display: flex; gap: 20px; flex-direction: column; justify-content: center; align-items: center; margin-bottom: 50px;">
                    <asp:Label CssClass="busqueda" Text="Búsqueda por Palabra Clave" runat="server" Style="line-height: 2; font-size: 25px; font-weight: bolder;" />
                    <asp:Label CssClass="escriba" Text="Escriba la palabra y presione Enter" runat="server" Style="line-height: 2; font-size: 20px; font-family: Quicksand; font-weight: 600;" />
                    <asp:TextBox runat="server" ID="txtFiltro" CssClass="form-control tclass" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged" Style="width: 250px; border: solid 2px #5ae7fb;" />
                    <asp:Label CssClass="escriba" Text="- Para volver a ver todos los productos borre la palabra y presione Enter -" runat="server" Style="line-height: 2; font-size: 20px; font-family: Quicksand; font-weight: 600;" />
                </div>


                <div style="display: flex; flex-wrap: wrap;">

                    <asp:Repeater runat="server" ID="repRepetidor">
                        <ItemTemplate>

                            <div class="col d-flex  justify-content-center responsive" style="min-width: 358px;">
                                <div style="width: 300px;" class="card mb-xxl-5 anchoCard w-50px p-xl-1">
                                    <div class="d-flex flex-wrap justify-content-center" style="padding: 12px; object-fit: cover">
                                        <img class="imagen" src="<%#Eval("Imagen")%>" style="max-height: 293px; max-width: 296px;" onerror="setDefaultImage(this)" alt="..." />
                                    </div>
                                    <div class="card-body d-grid align-content-end tarjeta">
                                        <h5 class="card-title elh5"><%#Eval("Nombre")%></h5>
                                        <p class="card-text"><%#Eval("Talles")%></p>
                                        <p class="card-text"><%#Eval("Sexo")%></p>
                                        <p class="card-text">$<%#Eval("Precio")%></p>
                                        <asp:Button Text="Ver Detalle" CssClass="btn  botonn" ID="btnDetalle"
                                            CommandArgument='<%#Eval("Id")%>' CommandName="AccesorioId"
                                            OnClick="btnDetalle_Click" runat="server" Style="background-color: #5ae7fb; color: red;" />



                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>

                </div>




            </ContentTemplate>
        </asp:UpdatePanel>

        <%--FOOTER--%>

        <footer>
            <div class="footer">
                <div class="divColor">
                    <h4>DIRECCIÓN</h4>
                    <p>Joaquín V. Gonzalez 376</p>
                    <p>Capital Federal</p>
                </div>
                <div class="divColor">
                    <h4>HORARIOS</h4>
                    <p>Lun-Vie: 9:00 AM - 16:00 PM</p>
                    <p>Sab: 9:00 AM - 14:00 AM</p>
                </div>
                <div class="divColor">
                    <h4>CONTACTO</h4>
                    <p><a href="#"><i class="fab fa-whatsapp" style="color: red; font-weight: bolder; margin-right: 3px;"></i></a>011 2311-0755</p>
                </div>
            </div>
            <div class="divColor" id="loUltimo" style="font-family: Arial, Helvetica, sans-serif; font-weight: bolder; font-weight: bolder; text-align: center; background-color: black; padding-bottom: 16px; margin: 0;">
                © 2025 THE BOY'S SOFIA. Todos los derechos reservados.
            </div>
        </footer>

    </div>


</asp:Content>
