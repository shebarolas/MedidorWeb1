<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalMaster.Master" AutoEventWireup="true" CodeBehind="AgregarMedidores.aspx.cs" Inherits="MedidoresWeb.AgregarMedidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Agregar Medidores</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="medidorNum">Numero Medidor</label>
                        <asp:TextBox ID="medidorNum"  TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="medidorNum" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese Numero de Medidor valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="fechatxt">Fecha</label>
                        <asp:TextBox ID="fechaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="fechaTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingrese Fecha valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="consumoTxt">Consumo</label>
                        <asp:TextBox ID="consumoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="consumoTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingrese Consumo valido"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button OnClick="btn_ingresar_Click" ID="btn_ingresar" CssClass="btn btn-secondary" runat="server" Text="Ingresar" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>
