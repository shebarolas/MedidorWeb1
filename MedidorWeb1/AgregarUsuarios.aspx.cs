using MedidoresModel;
using MedidoresModel.DAL;
using MedidoresModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidoresWeb
{
    public partial class AgregarUsuarios : System.Web.UI.Page
    {
        private IUsuariosDAL usuariosDAL = new UsuariosDALDB();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();

            usuario.Nombre = this.nombreTxt.Text.Trim();
            usuario.Rut = this.rutTxt.Text.Trim();
            usuario.Contraseña = this.contraseñaTxt.Text.Trim();
            usuario.Correo = this.correoTxt.Text.Trim();

            this.usuariosDAL.AgregarUsuarios(usuario);
            Response.Redirect("MostrarUsuarios.aspx");
        }
    }
}