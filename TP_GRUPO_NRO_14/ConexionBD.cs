using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;    //agrego libreria para uso de sql
using System.Windows.Forms;

namespace TP_GRUPO_NRO_14
{
    public class ConexionBD
    {
         String rutaBD = "Data Source=localhost\\sqlexpress; Initial Catalog = BDSucursales; Integrated Security = True";

        
        public int EjecutarConsulta(String consulta) //Insertar, eliminar o modificar
        {
            SqlConnection conexion = new SqlConnection(rutaBD);
            conexion.Open();

            SqlCommand comando = new SqlCommand(consulta, conexion); //sirve para realizar instrucciones de tipo insert, delete y update
            
            int filasAfectadas = comando.ExecuteNonQuery();
       
            return filasAfectadas;
        }

        
        
        public DataTable ObtenerTablas(string consultaSQL, string nombreTabla)
        {
            SqlConnection con= new SqlConnection(rutaBD);
            con.Open();
            SqlDataAdapter adap = new SqlDataAdapter(consultaSQL, con);
            DataSet ds = new DataSet();
            adap.Fill(ds, "nombreTabla");
            con.Close();
            return ds.Tables["nombreTabla"];
        }

        
       
    }
}
