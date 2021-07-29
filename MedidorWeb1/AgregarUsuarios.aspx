<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalMaster.Master" AutoEventWireup="true" CodeBehind="AgregarUsuarios.aspx.cs" Inherits="MedidoresWeb.AgregarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Agregar Usuarios</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese Nombre valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="rutTxt">Rut</label>
                        <asp:TextBox ID="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="rutTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingrese Rut valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="contraseñaTxt">Contraseña</label>
                        <asp:TextBox ID="contraseñaTxt" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="contraseñaTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingrese Password valida"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="correoTxt">Correo Electronico</label>
                        <asp:TextBox ID="correoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="correoTxt" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingrese Correo valido"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button OnClick="btn_ingresar_Click" ID="btn_ingresar" CssClass="btn btn-secondary" runat="server" Text="Ingresar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
