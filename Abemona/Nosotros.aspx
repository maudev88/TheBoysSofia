<%@ Page Title="" Language="C#" MasterPageFile="~/TheMaster.Master" AutoEventWireup="true" CodeBehind="Nosotros.aspx.cs" Inherits="Abemona.Nosotros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        p {
            font-family: Quicksand;
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

            #texto {
                 width: 100%!important;
                padding: 0 50px;
            }

            #texto p{
                font-size: 50px;
                text-align: center;
               
            }

            h4 {
                font-size: 40px;
            }

            .divColor p {
                font-size: 30px!important;
            }

            #loUltimo {
                font-size: 30px!important;
            }

             .divColor img {
                    width: 200px!important;
            }
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="text-align: center; margin: 50px 0px;">Nuestra Historia</h1>

    <div style="display: flex; flex-wrap: wrap; justify-content: center; gap: 60px;">
        
        <div>
            <img src="Imagenes/zz.jpg" alt="Alternate Text" style="height: 842px"; />
        </div>

        <div style="width: 600px; font-size: 26px;" id="texto">
            <p>Somos una marca dedicada a ofrecer ropa de alta calidad para niños, diseñada para acompañar su crecimiento con comodidad, 
                estilo y durabilidad. Nos especializamos en la venta mayorista, brindando a nuestros clientes una amplia variedad de prendas que cubren todas las edades y
                estilos. Nuestra misión es proporcionar productos que no solo sean atractivos y modernos, sino también prácticos y accesibles para todos los negocios que
                buscan ofrecer lo mejor a sus clientes.</p>

            <p>Contamos con un equipo comprometido que trabaja incansablemente para seleccionar las mejores telas, confeccionar diseños exclusivos y mantener precios competitivos.
                Con años de experiencia en el mercado, entendemos las necesidades de nuestros clientes y nos esforzamos por ofrecerles un servicio excepcional y entregas
                puntuales. Nos enorgullece ser un aliado confiable para negocios de ropa infantil, ayudando a que cada tienda brinde lo mejor a
                los pequeños de la casa.</p>
           
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
