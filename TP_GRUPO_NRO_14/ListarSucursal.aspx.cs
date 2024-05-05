using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace TP_GRUPO_NRO_14
{
    public partial class ListarSucursal : System.Web.UI.Page
    {
        private ConexionBD conexion = new ConexionBD();

        private Sucursales obj = new Sucursales();

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!Page.IsPostBack)
            {

                Cargar_gvSucursales();
              
            }

        }


        private void Cargar_gvSucursales()
        {
            gvSucursales.DataSource = obj.ObtenerSucursales();
            gvSucursales.DataBind();
               
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            gvSucursales.DataSource = obj.ObtenerSucursales();
            gvSucursales.DataBind();

            txtIdSucu.Text = "";
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            string ID = txtIdSucu.Text ;
       
            gvSucursales.DataSource = obj.BuscarSucursal(ID);
            gvSucursales.DataBind();

            txtIdSucu.Text = "";
        }
    }
}