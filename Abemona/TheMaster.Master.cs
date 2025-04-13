using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Abemona
{
    public partial class TheMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imgAvatar.ImageUrl = "Imagenes/imagenNeutra.png";

            if (!(Page is Login || Page is Registro || Page is Default2 || Page is Nosotros || Page is Colección || Page is Blog ||
                Page is Articulo1 || Page is Articulo2 || Page is Articulo3 || Page is Error || Page is Detalle || Page is Contacto))
            {
                if (!Seguridad.sesionActiva(Session["usuario"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    Usuario user = (Usuario)Session["usuario"];
                    lblUser.Text = user.Email;
                    if (!string.IsNullOrEmpty(user.Imagen))
                        imgAvatar.ImageUrl = "~/Imagenes/" + user.Imagen;

                }
            }

            if ((Page is Default2 || Page is Error || Page is Detalle || Page is Nosotros || Page is Colección || Page is Blog ||
                Page is Articulo1 || Page is Articulo2 || Page is Articulo3 || Page is Contacto) && Seguridad.sesionActiva(Session["usuario"]))
            {
                Usuario user = (Usuario)Session["usuario"];
                lblUser.Text = user.Email;
                if (!string.IsNullOrEmpty(user.Imagen))
                    imgAvatar.ImageUrl = "~/Imagenes/" + user.Imagen;
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}