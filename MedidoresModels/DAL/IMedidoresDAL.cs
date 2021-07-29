using MedidoresModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public interface IMedidoresDAL
    {
        List<Medidore> ObtenerMedidores();

        Medidore Obtener(int id);

        void EliminarMedidores(int id);

        void AgregarMedidores(Medidore medidore);

    }
}
