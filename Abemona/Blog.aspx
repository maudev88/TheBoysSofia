<%@ Page Title="" Language="C#" MasterPageFile="~/TheMaster.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Abemona.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .tarjetas {
            width: 1200px;
        }

        .botonn {
            transition: transform .3s ease !important;
            background-color: #5ae7fb;
            color: red;
            font-weight: bolder;
            font-family: Quicksand;
        }

            .botonn:hover {
                transform: scale(1.1);
                background-color: #5ae7fb;
                color: red;
                font-weight: bolder;
                font-family: Quicksand;
            }

            .botonn:active {
                transform: scale(1.1);
                background-color: #5ae7fb !important;
                color: red !important;
                font-weight: bolder;
                font-family: Quicksand;
                border: none !important;
            }

        /*FOOTER*/

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


        @media screen and (max-width: 991px) {

            h1 {
                font-size: 60px;
            }

            .tarjetas {
                width: 100%;
                border-top: #5ae7fb solid 2px !important;
                border-bottom: #5ae7fb solid 2px !important;
            }

                .tarjetas h5 {
                    font-size: 50px;
                }

                .tarjetas p {
                    font-size: 35px;
                }

                .tarjetas a {
                    font-size: 40px;
                }




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

    <h1 style="text-align: center; margin: 50px 0px;">Blog</h1>

    <div style="display: flex; flex-direction: column; gap: 60px; align-items: center;">


        <div class="card mb-3 tarjetas">
            <img src="Imagenes/Articulo1Card.jpg" class="card-img-top" alt="...">
            <div class="card-body" style="text-align: center;">
                <h5 class="card-title">Moda Infantil: Comodidad y Estilo para los Más Pequeños</h5>
                <p class="card-text">La ropa infantil es mucho más que un simple conjunto de prendas; es una forma de expresar personalidad...</p>
                <a href="Articulo1.aspx" class="btn botonn">Ver Artículo</a>
            </div>
        </div>


        <div class="card mb-3 tarjetas">
            <img src="Imagenes/Articulo2Card.jpg" class="card-img-top" alt="...">
            <div class="card-body" style="text-align: center;">
                <h5 class="card-title">Tendencias en Ropa Infantil: Colores y Estampados para Esta Temporada</h5>
                <p class="card-text">Cada temporada, las tendencias en moda infantil cambian, pero hay ciertos elementos que siempre siguen...</p>
                <a href="Articulo2.aspx" class="btn botonn">Ver Artículo</a>
            </div>
        </div>

        <div class="card mb-3 tarjetas">
            <img src="Imagenes/Articulo3Card.jpg" class="card-img-top" alt="...">
            <div class="card-body" style="text-align: center;">
                <h5 class="card-title">Consejos para Elegir Ropa Infantil que Sea Funcional y Estilosa</h5>
                <p class="card-text">Cuando se trata de elegir ropa infantil, los padres deben pensar en la funcionalidad sin sacrificar el estilo...</p>
                <a href="Articulo3.aspx" class="btn botonn">Ver Artículo</a>
            </div>
        </div>


    </div>

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

</asp:Content>
