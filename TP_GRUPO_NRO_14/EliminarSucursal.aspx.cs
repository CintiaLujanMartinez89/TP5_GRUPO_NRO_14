using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace TP_GRUPO_NRO_14
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        private ConexionBD conexion = new ConexionBD();

        private Sucursales obj = new Sucursales();

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;



        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
        
                int fila = obj.EliminarSucursal(txtbIdSuc.Text);
                if (fila == 1)
                {
                    lblExito.Text = "Sucursal eliminada con exito!";
                }else { lblExito.Text = "La Sucursal ingresada no existe"; }
           
            txtbIdSuc.Text = "";
        }
    }
}