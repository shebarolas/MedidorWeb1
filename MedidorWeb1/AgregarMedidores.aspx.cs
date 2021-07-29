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
    public partial class AgregarMedidores : System.Web.UI.Page
    {
        private IMedidoresDAL medidoresDAL = new MedidoresDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            Medidore medidores = new Medidore();

            medidores.NumMedidor = Convert.ToInt32(this.medidorNum.Text.Trim());
            medidores.Fecha = Convert.ToDateTime(this.fechaTxt.Text.Trim());
            medidores.Consumo = Convert.ToDouble(this.consumoTxt.Text.Trim());

            this.medidoresDAL.AgregarMedidores(medidores);
            Response.Redirect("MostrarMedidores.aspx");
        }
    }
}