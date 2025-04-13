<%@ Page Title="" Language="C#" MasterPageFile="~/TheMaster.Master" AutoEventWireup="true" CodeBehind="FormularioAccesorio.aspx.cs" Inherits="Abemona.FormularioAccesorio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .validacion {
            color: red;
            font-size: 12px;
        }

        .bolder {
            font-weight: bolder;
        }

        .botonAgregar {
            transition: transform .3s ease !important;
            margin-right: 127px;
            color: red;
            font-family: Quicksand;
            font-weight: bolder;
            background-color: #5ae7fb;
        }

            .botonAgregar:hover {
                transform: scale(1.1);
                background-color: #5ae7fb;
                color: red;
            }

            .botonAgregar:active {
                transform: scale(1.1);
                background-color: #5ae7fb !important;
                color: red !important;
            }

        .cuadradoCheck {
            display: flex;
            gap: 8px;
        }


        @media screen and (max-width: 991px) {

            .granContainer {
                flex-direction: column;
                display: flex;
                text-align: center;
                margin: 0px !important;
            }

            h1 {
                font-size: 60px;
                margin: 50px 0px 110px !important;
            }

            .botonesArriba {
                justify-content: center;
                align-items: center !important;
                gap: 65px;
            }

            .loDemas {
                justify-content: center;
            }

            .botonAgregar {
                margin: 0px;
            }

            .botonn {
                font-size: 40px !important;
            }

            .flechas {
                width: 200px;
            }

            .cuadradoAmarillo {
                width: 100%;
            }

            .textoCargaImagen {
                width: 455px;
            }

            .cuadradoCheck {
                display: inline;
            }

            .cuadradoCheck input {
                height: 40px;
                width: 40px;
            }

            .divCheckEli {
                align-items: center;
            }

            .checkEli input {
                height: 40px;
                width: 40px;
                position: relative;
                top: 11px;
            }

            .cance {
                position: relative;
                bottom: 6px;
            }

            .inputImg {
                font-size: 40px;
            }

            .filter {
                width: 90vw !important;
                height: 70px;
                font-size: 40px !important;
                border: solid 2px #5ae7fb;
            }

            .url {
                align-items: center;
                display: flex;
                flex-direction: column;
            }

            .imagenDiv {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .botonVerde {
                width: 400px !important;
            }

            .imagen {
                max-height: none !important;
                max-width: 890px !important;
            }

            label {
                font-size: 40px;
            }

            .camposCompletar {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <div class="granContainer" style="margin-left: 100px;">

        <h1 style="margin: 50px 0px 40px;">Agregar Artículo</h1>


        <div class="botonesArriba" style="display: flex; align-items: baseline; gap: 30px; margin-bottom: 30px;">
            <% if (!ConfirmaEliminacion)
                { %>

            <div class="mb-3" style="margin-top: 5px;">

                <asp:Button Text="Eliminar" ID="btnEliminar" CssClass="btn btn-danger botonn" OnClick="btnEliminar_Click" runat="server" />


            </div>

            <% } %>

            <% if (ConfirmaEliminacion)
                {  %>

            <div class="mb-3 d-flex gap-3 divCheckEli" style="margin-top: 5px;">
                <asp:CheckBox Text="Confirmar Eliminación " ID="chkConfirmaEliminacion" runat="server" CssClass="d-flex gap-3 align-items-lg-center botonn checkEli" />
                <asp:Button Text="Eliminar" ID="btnConfirmarEliminacion" CssClass="btn btn-outline-danger botonn" runat="server" OnClick="btnConfirmarEliminacion_Click" />
            </div>
            <% } %>

            <div>
                <a href="Administracion.aspx" style="color: black!important;" class="botonn cance">Cancelar</a>
            </div>
        </div>




        <div class="mb-xxl-5 loDemas" style="max-width: 1200px;">
            <div class="col-6 cuadradoAmarillo">

                <div style="border: 2px solid #5ae7fb; padding: 25px 16px 16px; margin-bottom: 37px;">
                    <div style="display: flex;" class="botonn">
                        <div class="textoCargaImagen">
                            Carga Imagen desde su Dispositivo
                        </div>

                        <div class="flechas" style="margin-left: 21px; font-weight: bolder; font-size: larger; position: relative; bottom: 3px; color: red">
                            <----->
                        </div>

                        <div class="mb-5 d-flex gap-1" style="margin-left: 21px;">
                            <asp:CheckBox CssClass="cuadradoCheck" Text="Seleccionar desde URL" ID="CheckBoxURL" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBoxURL_CheckedChanged" />

                        </div>
                    </div>

                    <% if (!CheckBoxURL.Checked)
                        { %>
                    <div style="margin-bottom: 37px; margin-top: 10px;">
                        <input type="file" id="cargaImagen" runat="server" class="form-control tclass inputImg " />
                    </div>


                    <% } %>



                    <% if (CheckBoxURL.Checked)
                        { %>


                    <div class="mb-3 url">
                        <label for="txtImagen" class="form-label inputImg">URL de la Imagen:</label>
                        <asp:TextBox runat="server" ID="txtImagen" CssClass="form-control filter"
                            AutoPostBack="true" OnTextChanged="txtImagen_TextChanged" />
                    </div>

                    <% } %>

                    <div class="imagenDiv" style="display: flex; flex-direction: column;">
                        <asp:Button Text="Actualizar Imagen" CssClass="btn btn-success botonn botonVerde" Style="margin-bottom: 40px;" runat="server" ID="btnImagen" OnClick="btnImagen_Click" />

                        <asp:Image ImageUrl="https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty-300x240.jpg"
                            runat="server" ID="imgArticulos" CssClass="mb-xxl-4 imagen"  />  <%--Style="max-height: 484px;"--%>
                    </div>

                </div>

                <div class="camposCompletar">
                    <div class="mb-3">
                        <label for="txtId" class="form-label bolder">Id:</label>
                        <asp:TextBox runat="server" ID="txtId" CssClass="form-control filter" />
                    </div>
                    <div class="mb-3">
                        <label for="txtCodigo" class="form-label bolder">Código:</label>
                        <asp:TextBox runat="server" ID="txtCodigo" CssClass="form-control filter" />
                    </div>
                    <div class="mb-3">
                        <label for="txtNombre" class="form-label bolder">Nombre:</label>
                        <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control filter" />
                    </div>
                    <div class="mb-3" style="margin-top: 20px;">
                        <label for="txtCategoria" class="form-label bolder">Talles:</label>
                        <asp:TextBox runat="server" ID="txtTalles" CssClass="form-control filter" />
                    </div>
                    <div class="mb-3" style="margin-top: 20px;">
                        <label for="txtMaterial" class="form-label bolder">Sexo:</label>
                        <asp:DropDownList runat="server" ID="ddlSexo" CssClass="form-select filter"></asp:DropDownList>
                    </div>
                    <div style="margin-top: 20px;">
                        <label for="txtPrecio" class="form-label bolder">Precio:</label>
                        <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control filter" Text="0" />
                        <asp:RegularExpressionValidator ErrorMessage="Sólo Números" CssClass="validacion" ValidationExpression="^[0-9]+$" ControlToValidate="txtPrecio" runat="server" />
                    </div>
                    <div class="mb-3">
                        <label for="txtDescripcion" class="form-label bolder">Descripción:</label>
                        <asp:TextBox runat="server" ID="txtDescripcion" TextMode="MultiLine" Rows="3" CssClass="form-control filter" />
                    </div>
                </div>


            </div>

            <div class="mb-3 " style="margin-top: 5px;">

                <asp:Button Text="Agregar" ID="btnAgregar" CssClass="btn botonAgregar botonn" runat="server" OnClick="btnAgregar_Click" />

            </div>

        </div>

    </div>


</asp:Content>
