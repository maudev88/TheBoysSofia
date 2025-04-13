<%@ Page Title="" Language="C#" MasterPageFile="~/TheMaster.Master" AutoEventWireup="true" CodeBehind="FavProductos.aspx.cs" Inherits="Abemona.Estadisticas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style> 
         .oculto {
            display: none;
        }

          @media screen and (max-width: 991px)  {

               h1 {
                font-size: 60px;
                margin: 50px 0px 80px!important;
            }

                .dgv {
                font-size: 30px;
            }

          }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <h1 style="text-align: center; margin: 50px 0px;">Productos más populares</h1>
    
    <asp:ScriptManager runat="server" />




    <asp:UpdatePanel runat="server">
        <ContentTemplate>   

             <asp:GridView runat="server" ID="dgvAccesorios" DataKeyNames="Id" CssClass="table dgv" AutoGenerateColumns="false"
                  Style="text-align: center;">
        <Columns>
            <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />
            <asp:BoundField HeaderText="Código" DataField="Codigo" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Favoritos" DataField="CantFavoritos"/>
            <asp:BoundField HeaderText="Talles" DataField="Talles" />
            <asp:BoundField HeaderText="Sexo" DataField="Sexo.Nombre" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
        </Columns>
    </asp:GridView>

        </ContentTemplate>
    </asp:UpdatePanel>
   

</asp:Content>
