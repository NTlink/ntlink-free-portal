using ServicioLocal.Business.CorreoContacto;
using ServicioLocalContract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ntlink33
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptarPassword_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCorreo.Text) || string.IsNullOrEmpty(txtEmpresa.Text)
                || string.IsNullOrEmpty(txtNombre.Text) || string.IsNullOrEmpty(txtTelefono.Text)
                || string.IsNullOrEmpty(txtComentarios.Text))
            {
                LabResultado.Text = "Todos los datos son requeridos";
                LabResultado.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
             
                LabResultado.Text = "";
                try
                {
                    var cliente = NtLinkClientFactory.Cliente();
                    using (cliente as IDisposable)
                    {

                        string Cuerpo = " <b> Información</b> <br/><br/>" + " <b>Empresa:</b>" + txtEmpresa.Text
                        + " <br/><b>Correo:</b>" + txtCorreo.Text +
                        " <br/><b>Nombre:</b>" + txtNombre.Text + "<br/> <b>Telefono:</b>"
                        + txtTelefono.Text + "<br/> <b>Descripción:</b>" + txtComentarios.Text;

                        cliente.Enviarquejas( "Quejas y soporte", Cuerpo);
                        
                        LabResultado.Text = "Mensaje enviado correctamente, en breve nos pondremos en contacto contigo";
                        LabResultado.Font.Bold = true;
                        LabResultado.ForeColor = System.Drawing.Color.Black;
                        Limpiar();
                    }
                }
                catch (Exception ee)
                {
                    LabResultado.Text = "Error: Ocurrio un error al enviar el correo";
                    LabResultado.ForeColor = System.Drawing.Color.Red;
                }
            }
}

        private void Limpiar()
        {
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            txtNombre.Text = "";
            txtComentarios.Text = "";
            txtEmpresa.Text = "";
        }
protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
   
    }
}