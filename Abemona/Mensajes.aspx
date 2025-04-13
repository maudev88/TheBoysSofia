﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TheMaster.Master" AutoEventWireup="true" CodeBehind="Mensajes.aspx.cs" Inherits="Abemona.Mensajes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
       
        h1 {
            text-align: center;
            margin: 55px 0px;
        }

        .oculto {
            display: none;
        }

        .box::before {
            content: "Seleccionar";
        }

        .Select a{
            color: red!important; 
            margin-left: 5px; 
            font-family: Quicksand;
            font-weight: bolder;
        }

         @media screen and (max-width: 991px) {

              h1 {
                font-size: 60px;
                margin: 50px 0px 80px!important;
            }

               .box::before {
                content: "S";
            }

              .divGrid {
                  margin: 0!important;
              }

              .dgv {
                font-size: 40px;
            }

          
         }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:ScriptManager runat="server" />


    <h1>Mensajes</h1>

    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <div class="divGrid" style="margin: 0 30px; max-height: 504px; overflow-y: auto; border: 1px solid #ddd; text-align:center;">
                <asp:GridView runat="server" ID="dgvMensajes" DataKeyNames="Id" CssClass="table dgv" AutoGenerateColumns="false"
                    OnSelectedIndexChanged="dgvMensajes_SelectedIndexChanged" EmptyDataText="No hay mensajes">
                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Mail" DataField="Mail" />
                        <asp:CommandField HeaderText="Acción" ShowSelectButton="true" ItemStyle-CssClass="Select" SelectText="" ControlStyle-CssClass="box" />
                    </Columns>
                </asp:GridView>
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
