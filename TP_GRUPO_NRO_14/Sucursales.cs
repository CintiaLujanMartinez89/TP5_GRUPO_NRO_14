using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace TP_GRUPO_NRO_14
{
    public class Sucursales
    {
        ConexionBD conexion = new ConexionBD();

        public DataTable ObtenerSucursales()
        {
            string consultaSQL = "SELECT Id_Sucursal AS ID, NombreSucursal AS NOMBRE,DescripcionSucursal AS DESCRIPCION, DescripcionProvincia AS PROVINCIA, DireccionSucursal AS DIRECCIÓN FROM Sucursal INNER JOIN Provincia ON Id_Provincia=Id_ProvinciaSucursal";
            string nombreTabla = "Sucursales";
           
            return conexion.ObtenerTablas(consultaSQL, nombreTabla);
        }

        public DataTable ObtenerProvincias()
        {
            string consultaSQL = "SELECT * FROM Provincia";
            string nombreTabla = "Provincias";
            return conexion.ObtenerTablas(consultaSQL, nombreTabla);
        }

        public DataTable ObtenerHorarios()
        {
            string consultaSQL = "SELECT * FROM Horario";
            string nombreTabla = "Horarios";
            return conexion.ObtenerTablas(consultaSQL, nombreTabla);
        }

        public int AgregarSucursal(string nombre, string descripcion, int idProvincia, string direccion)
        {
            string consultaSQL = "INSERT INTO Sucursal (NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal) VALUES  ('" + nombre + "', '" + descripcion + "', " + idProvincia + ", '" + direccion + "')";

            return conexion.EjecutarConsulta(consultaSQL);
        }

        public int EliminarSucursal(string idSucursal)
        {
            string consultaSQL = "DELETE FROM Sucursal WHERE Id_Sucursal = '" + idSucursal + "'";
            return conexion.EjecutarConsulta(consultaSQL);
        }

        public DataTable BuscarSucursal(string idSucursal)
        {
            string consultaSQL = "SELECT Id_Sucursal AS ID, NombreSucursal AS NOMBRE,DescripcionSucursal AS DESCRIPCION, DescripcionProvincia AS PROVINCIA, DireccionSucursal AS DIRECCIÓN  FROM Sucursal INNER JOIN Provincia ON Id_Provincia=Id_ProvinciaSucursal WHERE Id_Sucursal=" + idSucursal; //CONSTRUIR LA CONSULTA SQL PARA BUSCAR UNA SUCURSAL
            string nombreTabla = "Sucursales";
            return conexion.ObtenerTablas(consultaSQL, nombreTabla);
        }

      
    }
}