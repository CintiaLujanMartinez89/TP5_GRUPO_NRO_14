using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;    //agrego libreria para uso de sql
using System.Windows.Forms;

namespace TP_GRUPO_NRO_14
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        private ConexionBD conexion = new ConexionBD();

        private Sucursales obj = new Sucursales();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
           
            if (!Page.IsPostBack)
            {
           
              
                CargarProvincias();
                ddlProvincia.Items.Insert(0,"---Seleccionar---");
            }
        }
        private void CargarProvincias()
        {
           
            ddlProvincia.DataSource = obj.ObtenerProvincias();
            ddlProvincia.DataTextField = "DescripcionProvincia";
            ddlProvincia.DataValueField = "Id_Provincia";
            ddlProvincia.DataBind();
        }









        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            int Filas_comprometidas=obj.AgregarSucursal(txtbNomSucur.Text,txtbDescrip.Text,ddlProvincia.SelectedIndex,txtbDirecci.Text);
     
            txtbNomSucur.Text = "";
            txtbDirecci.Text = "";
            txtbDescrip.Text = "";

            if (Filas_comprometidas == 1)
            {
                lblExito.Text = "Sucursal Ingresada con Exito!";
            }else
            {
                lblExito.Text = "Error, No se pudo ingresar la Sucursal";
            }
        }
    }        
}

    
