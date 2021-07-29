<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalMaster.Master" AutoEventWireup="true" CodeBehind="MostrarMedidores.aspx.cs" Inherits="MedidoresWeb.MostrarMedidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                      <div class="row">
                        <div class="row mt-5">
                            <asp:GridView ID="grillaMedidores" runat="server" CssClass="table table-hover table-bordered"
                                AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="No hay registros"
                                OnRowCommand="grillaMedidores_RowCommand"
                                >
                                <Columns>
                                    <asp:BoundField HeaderText="Numero de Medidor" DataField="NumMedidor" />
                                    <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                                    <asp:BoundField HeaderText="Consumo" DataField="Consumo" />
                                    <asp:TemplateField HeaderText="Acciones">
                                        <ItemTemplate>
                                           <asp:Button Text="Eliminar" CssClass="btn btn-danger" runat="server" CommandArgument='<%#Eval("Id")%>' CommandName="eliminar" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
