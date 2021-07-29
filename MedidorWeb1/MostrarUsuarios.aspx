<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalMaster.Master" AutoEventWireup="true" CodeBehind="MostrarUsuarios.aspx.cs" Inherits="MedidoresWeb.MostrarAsistentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                      <div class="row">
                        <div class="row mt-5">
                            <asp:GridView ID="grillaUsuarios" runat="server" CssClass="table table-hover table-bordered"
                                AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="No hay registros"
                                OnRowCommand="grillaUsuarios_RowCommand"
                                >
                                <Columns>
                                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                    <asp:BoundField HeaderText="Rut" DataField="Rut" />
                                    <asp:BoundField HeaderText="Contraseña" DataField="Contraseña" />
                                    <asp:BoundField HeaderText="Correo" DataField="Correo" />
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
