<%@ Page Title="" Language="C#" MasterPageFile="~/TheMaster.Master" AutoEventWireup="true" CodeBehind="Articulo1.aspx.cs" Inherits="Abemona.Articulo1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        p {
            font-family: Quicksand;
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

            #articulo p {
                font-size: 50px;
                text-align: center;
            }

            #imag {
                width: 100%;
            }

                #imag img {
                    width: 100%;
                }

            .botonn {
                font-size: 50px !important;
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
                    width: 200px!important;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="text-align: center; margin: 50px 0px;">Moda Infantil: Comodidad y Estilo para los Más Pequeños</h1>

    <div style="display: flex; align-items: center; flex-direction: column;">
        <div id="imag">
            <img src="Imagenes/Articulo1.jpg" alt="Alternate Text" />
        </div>
        <div style="padding: 0 60px; font-size: 30px; margin: 60px 0;" id="articulo">
            <p>
               La ropa infantil es mucho más que un simple conjunto de prendas; es una forma de expresar personalidad desde una edad temprana. Hoy en día,
                las opciones de moda para niños no solo se centran en el estilo, sino también en la comodidad. Los padres buscan prendas suaves, transpirables
                y fáciles de poner y quitar para sus hijos, sin comprometer el diseño. Desde divertidos estampados hasta colores vibrantes, la ropa infantil ofrece
                infinitas posibilidades para que los más pequeños se sientan cómodos y a la moda.
            </p>
               <p>
                Además de la comodidad, la durabilidad es un factor clave a la hora de elegir ropa para niños. Los niños están en constante movimiento y, a menudo,
                   tienen la energía para hacer que sus prendas se desgasten rápidamente. Es importante optar por materiales de alta calidad que resistan el uso
                   diario y los lavados frecuentes. Las marcas de ropa infantil que logran equilibrar estilo, confort y resistencia se están ganando cada vez más
                   la confianza de los padres.
            </p>

            <div style="display: flex; justify-content: center; margin-top: 50px;">
                <a href="Blog.aspx" class="botonn btn" style="font-size: 20px;">Volver</a>
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
