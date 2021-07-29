using MedidoresModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class MedidoresDALDB : IMedidoresDAL

    {
        private MedidoresDBEntities1 medidoresDB = new MedidoresDBEntities1();
        public void AgregarMedidores(Medidore medidore)
        {
            this.medidoresDB.Medidores.Add(medidore);
            this.medidoresDB.SaveChanges();
        }

        public void EliminarMedidores(int id)
        {
            Medidore medidore = this.medidoresDB.Medidores.Find(id);
            this.medidoresDB.Medidores.Remove(medidore);
            this.medidoresDB.SaveChanges();
        }

        public Medidore Obtener(int id)
        {
            return this.medidoresDB.Medidores.Find(id);
        }

        public List<Medidore> ObtenerMedidores()
        {
            return this.medidoresDB.Medidores.ToList();
        }
    }
}
