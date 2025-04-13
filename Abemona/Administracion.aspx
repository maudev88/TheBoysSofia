<%@ Page Title="" Language="C#" MasterPageFile="~/TheMaster.Master" AutoEventWireup="true" CodeBehind="Administracion.aspx.cs" Inherits="Abemona.AccesoriosLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .oculto {
            display: none;
        }

        .box::before {
            content: "Seleccionar";
        }

        .dgv a {
            color: red !important;
            font-weight: bolder;
        }

        .botonn {
            transition: transform .3s ease !important;
        }

            .botonn:hover {
                transform: scale(1.1);
            }

        @media screen and (max-width: 991px) {

            .box::before {
                content: "S";
            }

            h1 {
                font-size: 60px;
                margin: 50px 0px 110px!important;
            }

            .granContainer {
                margin: 0px 12px 0px!important;
            }

             .botonn {
                font-size: 50px !important;
            }

            .btnYFiltro {
                flex-direction: column;
                gap: 90px!important;
            }

            .fil {
                justify-content: center;
            }

            .filtrar {
                font-size: 50px !important;
                line-height: 1.3!important;
            }

            .filter {
                width: 90vw !important;
                height: 70px;
                font-size: 40px !important;
                border: solid 2px #5ae7fb;
            }

            .dgv {
                font-size: 25px;
            }

            .dgv a {
                font-size: 70px;
               
            }

            
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <h1 style="text-align: center; margin: 50px 0px;">Lista de Artículos</h1>

            <div class="granContainer" style="margin: 0 30px 30px;">
                <div class="row">
                    <div class="col-6 btnYFiltro" style="display: flex; justify-content: center; align-items: center; width: 100%; gap: 148px; margin-bottom: 20px;">
                       
                          <div>
                            <a href="FormularioAccesorio.aspx" class="btn botonn" style="background-color: #5ae7fb; color: red; font-weight: bolder; font-family: Quicksand;">Agregar</a>
                        </div>
                        <div class="fil" style="width: 300px; display: flex; gap: 20px;">
                            <asp:Label CssClass="filtrar" Text="Filtrar:" runat="server" Style="line-height: 2;" />
                            <asp:TextBox runat="server" ID="txtFiltro" CssClass="form-control filter" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged" />
                        </div>
                      
                    </div>


                </div>

                <asp:GridView runat="server" ID="dgvAccesorios" DataKeyNames="Id" CssClass="table dgv" AutoGenerateColumns="false"
                    OnSelectedIndexChanged="dgvAccesorios_SelectedIndexChanged" Style="text-align: center;">

                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />
                        <asp:BoundField HeaderText="Código" DataField="Codigo" />
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Talles" DataField="Talles" />
                        <asp:BoundField HeaderText="Sexo" DataField="Sexo.Nombre" />
                        <asp:BoundField HeaderText="Precio" DataField="Precio" />
                        <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="" ControlStyle-CssClass="box" />
                    </Columns>

                </asp:GridView>


            </div>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
