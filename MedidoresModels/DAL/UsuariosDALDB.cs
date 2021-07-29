using MedidoresModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class UsuariosDALDB : IUsuariosDAL
    {

        private MedidoresDBEntities1 medidoresDB = new MedidoresDBEntities1();

        public void AgregarUsuarios(Usuario usuario)
        {
            this.medidoresDB.Usuarios.Add(usuario);
            this.medidoresDB.SaveChanges();
        }

        public void EliminarUsuario(int id)
        {
            Usuario usuario = this.medidoresDB.Usuarios.Find(id);

            this.medidoresDB.Usuarios.Remove(usuario);
            this.medidoresDB.SaveChanges();
        }

        public Usuario Obtener(int id)
        {
            return this.medidoresDB.Usuarios.Find(id);
        }

        public List<Usuario> ObtenerUsuarios()
        {
            return this.medidoresDB.Usuarios.ToList();
        }
    }
}
