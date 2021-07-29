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
    public partial class MostrarAsistentes : System.Web.UI.Page
    {

        private IUsuariosDAL usuariosDAL = new UsuariosDALDB();

        private void cargarGrilla()
        {
            

            CargarGrilla(this.usuariosDAL.ObtenerUsuarios());
        }
        private void CargarGrilla(List<Usuario> usuarios)
        {
            this.grillaUsuarios.DataSource = usuarios;
            this.grillaUsuarios.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrilla();
            }
        }

        protected void grillaUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.usuariosDAL.EliminarUsuario(id);
                this.cargarGrilla();
            }

        }
    }
}