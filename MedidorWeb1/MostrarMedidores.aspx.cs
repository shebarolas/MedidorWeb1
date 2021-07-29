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
    public partial class MostrarMedidores : System.Web.UI.Page
    {
        private IMedidoresDAL medidoresDAL = new MedidoresDALDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrilla();
            }
        }

        private void cargarGrilla()
        {
            this.CargarGrilla(this.medidoresDAL.ObtenerMedidores());
        }

        private void CargarGrilla(List<Medidore> medidores)
        {
            this.grillaMedidores.DataSource = medidores;
            this.grillaMedidores.DataBind();
        }

        protected void grillaMedidores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                this.medidoresDAL.EliminarMedidores(id);
                this.cargarGrilla();
            }

        }
    }
}