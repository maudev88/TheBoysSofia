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
    public partial class Default2 : System.Web.UI.Page
    {
        public List<Accesorio> ListaAccesorios { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            AccesoriosNegocio negocio = new AccesoriosNegocio();
            ListaAccesorios = negocio.listar();

            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaAccesorios;
                repRepetidor.DataBind();
            }
        }





        //protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    ddlCriterio.Items.Clear();

        //    if (ddlCampo.SelectedItem.ToString() == "Categoría")
        //    {
        //        // Crear instancia de AccesoriosNegocio
        //        AccesoriosNegocio negocio = new AccesoriosNegocio();

        //        // Obtener las categorías desde la base de datos
        //        List<Elemento> categorias = negocio.ObtenerCategorias();  // Llamada al método de la instancia

        //        // Agregar las categorías al ddlCriterio
        //        ListItem opcionSeleccion = new ListItem("Seleccione una categoría", "");
        //        opcionSeleccion.Enabled = false;
        //        ddlCriterio.Items.Add(opcionSeleccion);

        //        foreach (var categoria in categorias)
        //        {
        //            // Agregar cada categoría al DropDownList
        //            ddlCriterio.Items.Add(new ListItem(categoria.Nombre, categoria.Id.ToString()));
        //        }
        //    }
        //    else
        //    {
        //        // Crear instancia de AccesoriosNegocio
        //        AccesoriosNegocio negocio = new AccesoriosNegocio();

        //        // Obtener las categorías desde la base de datos
        //        List<Elemento> materiales = negocio.ObtenerMateriales();  // Llamada al método de la instancia

        //        // Agregar las categorías al ddlCriterio
        //        ListItem opcionSeleccion = new ListItem("Seleccione un material", "");
        //        opcionSeleccion.Enabled = false;
        //        ddlCriterio.Items.Add(opcionSeleccion);

        //        foreach (var material in materiales)
        //        {
        //            // Agregar cada categoría al DropDownList
        //            ddlCriterio.Items.Add(new ListItem(material.Nombre, material.Id.ToString()));
        //        }
        //    }
        //}

        //protected void btnBuscar_Click(object sender, EventArgs e)
        //{
        //    // Obtener el valor seleccionado en el DropDownList de campos y criterios
        //    string campoSeleccionado = ddlCampo.SelectedItem.Text;
        //    string criterioSeleccionado = ddlCriterio.SelectedItem.Text;

        //    // Llamada a FiltrarBusqueda en la clase AccesoriosNegocio
        //    AccesoriosNegocio negocio = new AccesoriosNegocio();
        //    List<Accesorio> listaFiltrada = negocio.FiltrarBusqueda(campoSeleccionado, criterioSeleccionado);

        //    // Asignar la lista filtrada al Repeater
        //    repRepetidor.DataSource = listaFiltrada;
        //    repRepetidor.DataBind();
        //}


        protected void btnDetalle_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;

            Response.Redirect("Detalle.aspx?id=" + valor, false);
        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            List<Accesorio> lista = ListaAccesorios;
            List<Accesorio> listaFiltrada = lista.FindAll(x => x.Talles.ToUpper().Contains(txtFiltro.Text.ToUpper())
                || x.Sexo.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper())
                || x.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper())
                || x.Codigo.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            repRepetidor.DataSource = listaFiltrada;
            repRepetidor.DataBind();
        }


        //protected void btnNuevaBusqueda_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Default.aspx", false);
        //}
    }
}