using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServicioLocalContract;
using System.Threading;
using System.Web.Security;
using System.ServiceModel;

namespace Ntlink33
{
    public partial class wfrLogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                btnAceptarPassword.Attributes["disabled"] = "disabled";
                btnAceptarPassword.Enabled = false;
                //  btnAceptarPassword.BackColor = System.Drawing.Color.White;

                var cliente = NtLinkClientFactory.Cliente();
                using (cliente as IDisposable)
                {
                        dllEstado.DataSource = cliente.Consultar_EstadosALL();
                        dllEstado.DataTextField = "NombredelEstado";
                        dllEstado.DataValueField = "c_Estado1";
                        dllEstado.DataBind();
                          //---------------
                            ddlMunicipio.DataSource = cliente.Consultar_MunicipioALL(dllEstado.SelectedValue);
                            ddlMunicipio.DataTextField = "Descripción";
                            ddlMunicipio.DataValueField = "c_Municipio1";
                            ddlMunicipio.DataBind();
                          //  ddlMunicipio.Items.Insert(0, "Seleccionar");
                        
                }
                //this.lblUserIdCambiarPassword.Text = "";
              //  ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), " ShowPopup",
              //  "$('#CambiarPrimera').modal('show') ", true);
            }
        }

        protected void dllEstado_SelectedIndexChanged(object sender, EventArgs e)
        { var cliente = NtLinkClientFactory.Cliente();
            using (cliente as IDisposable)
            {

                ddlMunicipio.DataSource = cliente.Consultar_MunicipioALL(dllEstado.SelectedValue);
                ddlMunicipio.DataTextField = "Descripción";
                ddlMunicipio.DataValueField = "c_Municipio1";
                ddlMunicipio.DataBind();
                ddlMunicipio.Items.Insert(0, "Seleccionar");
            }
        }
        protected void ddlMunicipio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnBuscarRFC_Click(object sender, EventArgs e)
        {

        }
        protected void logMain_Authenticate(object sender, AuthenticateEventArgs e)
        {
           // System.Threading.Thread.Sleep(5000);

            var cliente = NtLinkClientFactory.Cliente();

            using (cliente as IDisposable)
            {
                string ip = GetIP();
                Session["NameIP"] = "IP Cliente: " + ip + ", Login:" + this.logMain.UserName;
                UsuarioLocal res = cliente.Login(this.logMain.UserName, this.logMain.Password, ip);
                if (res != null && res.Bloqueado == true)
                {
                    int i = Membership.MaxInvalidPasswordAttempts;

                    DateTime fecharegistro = (DateTime)res.FechaBloqueo;
                    var minutos = (DateTime.Now - fecharegistro).TotalMinutes;
                    if (minutos < 0)
                        minutos = minutos * -1;
                    if (minutos > 30 && i <= Convert.ToInt16(res.numeroBloaquedo))
                    {
                        var clix = NtLinkClientFactory.Cliente();
                        using (cliente as IDisposable)
                        {
                            clix.DesbloquearUsuario(this.logMain.UserName);
                            res = cliente.Login(this.logMain.UserName, this.logMain.Password, ip);

                        }

                    }

                }

                if (res != null && res.UserName != null)
                {


                    var empresa = cliente.ObtenerEmpresaByUserId(res.UserId.ToString());
                    if (empresa != null)
                    {

                        Session["UserNameRGV"] = this.logMain.UserName;//nueva linea para logeo CPP

                        var pantallas = cliente.ObtenerPantallasPorIdEmpresa(empresa.IdEmpresa);
                        var sistema = cliente.ObtenerSistemaById((int)empresa.idSistema, true);
                        if (empresa.PrimeraVez || res.CambiarPassword == "1")
                        {
                            this.lblUserIdCambiarPassword.Text = res.UserId.ToString();
                            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), " ShowPopup",
                             "$('#CambiarPrimera').modal('show') ", true);

                            e.Authenticated = false;
                            return;
                        }

                        Session["idEmpresa"] = empresa.IdEmpresa;
                        Session["idSistema"] = empresa.idSistema;
                        Session["razonSocial"] = empresa.RazonSocial;
                        Session["perfil"] = res.Perfil;
                        Session["userId"] = res.UserId;
                        Session["nombre"] = res.NombreCompleto;
                        Session["iniciales"] = res.Iniciales;
                        Session["empresa"] = empresa;
                        Session["panatallas"] = pantallas;
                        Session["TipoSistema"] = sistema.TipoSistema;
                        Session["SaldoEmision"] = sistema.SaldoEmision;
                        Session["SaldoTimbrado"] = sistema.SaldoTimbrado;
                        Session["Contratos"] = sistema.TimbresContratados;
                        Session["RGVRFC"] = empresa.RFC;// agregado para cuentas por pagar

                    }
                    else
                    {
                        var dist = cliente.ObtenerDIsById(res.UserId.ToString());
                        if ((dist != null && dist.PrimeraVez == true) || res.CambiarPassword == "1")
                        {
                            this.lblUserIdCambiarPassword.Text = res.UserId.ToString();
                            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), " ShowPopup",
                            "$('#CambiarPrimera').modal('show') ", true);

                            e.Authenticated = false;
                            return;
                        }
                        if (dist != null)
                        {
                            Session["IdDistribuidor"] = dist.IdDistribuidor;
                            Session["razonSocial"] = dist.RazonSocial;
                            Session["tipoSistema"] = dist.TipoSistema;
                            Session["nombre"] = dist.Nombre;
                            Session["empresa"] = dist;
                        }

                        Session["perfil"] = res.Perfil;
                        Session["userId"] = res.UserId;

                        Session["iniciales"] = res.Iniciales;

                    }

                    e.Authenticated = true;
                }
                else
                {
                    e.Authenticated = false;
                    if (res != null)
                    {
                        if (res.Bloqueado == false)
                            logMain.FailureText = "Error de contraseña: Intento " + res.numeroBloaquedo;
                        else
                            logMain.FailureText = "Error: Usuario bloqueado, favor de comunicarse o esperar 30 minutos e intente de nuevo.";
                    }
                }
            }
            
        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
         
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), " ShowPopup",
                " document.getElementById('" + txtCorreoAlta.ClientID + "').value = '';" +
                    " document.getElementById('" + txtCalle.ClientID + "').value = '';" +
                  " document.getElementById('" + txtContacto.ClientID + "').value = '';" +
                  " document.getElementById('" + txtCP.ClientID + "').value = '';" +
                  " document.getElementById('" + txtTelefono.ClientID + "').value = '';" +
              "document.getElementById('" + txtRFCAlta.ClientID + "').value = ''; " +
                   "document.getElementById('" + txtRazonSocial.ClientID + "').value = ''; " +
                    "document.getElementById('" + labErrorAlta.ClientID + "').innerHTML = ''; " +
                  
            "$('#ModalAlta').modal('show') ", true);


            //"document.getElementById('" + labErrorAlta.ClientID + "').style.color = 'Red';" +

        }
        protected void btnEnviarAlta_Click(object sender, EventArgs e)
        {
            try
            {
                var cliente = NtLinkClientFactory.Cliente();
                Sistemas sis = new Sistemas();
                sis.Email = txtCorreoAlta.Text;
                sis.Rfc = txtRFCAlta.Text;
                sis.RazonSocial = txtRazonSocial.Text;
                sis.RegimenFiscal = "601";
                sis.SaldoEmision = 5;
                sis.SaldoTimbrado = 0;
                string resul = "";
                sis.Ciudad = ddlMunicipio.SelectedItem.Text;
                sis.Estado = dllEstado.SelectedItem.Text;
                sis.Contacto = txtContacto.Text;
                sis.Direccion = txtCalle.Text;
                sis.Cp = txtCP.Text;
                sis.Telefono = txtTelefono.Text;
                using (cliente as IDisposable)
                {
                    cliente.GuardarSistemaAlta(sis, ref resul);
                    if (resul.Contains("se creó el usuario"))
                    {
                       // labErrorAlta.ForeColor = System.Drawing.Color.Yellow;
                        labErrorAlta.Text = "Se envió un email con la contraseña";
                    }
                    else
                        labErrorAlta.Text = resul;
                }
            }
            catch (Exception ex)
            {
                labErrorAlta.Text = "";
                labErrorAlta.Text = ex.Message;
          
            }
        }
            protected void btnOlvidar_Click(object sender, EventArgs e)
        {
            
            //this.logMain.Enabled = false;

            lblMensajePass.Text = "";
            txtOlvide.Text = "";
            txtRfcOlvide.Text = "";
            /*
             this.mpePasswordChange.Show();
             UpdatePanel5.Update();
             this.logMain.Enabled = true;
             */

            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), " ShowPopup",
                " document.getElementById('" + txtOlvide.ClientID + "').value = '';" +
                "document.getElementById('" + txtRfcOlvide.ClientID + "').value = ''; " +
               "$('#ModalRFC').modal('show') ", true);




        }
        protected void btnEnviarPass_Click(object sender, EventArgs e)
        {

            try
            {
                var cliente = NtLinkClientFactory.Cliente();
                using (cliente as IDisposable)
                {
                    if (cliente.RecuperarPassword(this.txtRfcOlvide.Text, this.txtOlvide.Text))
                    {
                        lblMensajePass.Text = "Se envió un email con la nueva contraseña";
                        lblMensajePass.Visible = true;
                    }

                }
            }
            catch (FaultException faultException)
            {
                this.logMain.Enabled = true;
                lblMensajePass.Text = faultException.Message;
                lblMensajePass.Visible = true;
            }
            this.logMain.Enabled = true;

            // mpePasswordChange.Show();
            //  UpdatePanel5.Update();
        }
        protected void Cerrar_Click(object sender, EventArgs e)
        {
           
            // mpePasswordChange.Hide();
            // UpdatePanel5.Update();
            //UpdatePanel4.Update();
        }
        public string GetIP()
        {
            string ip = "";

            ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
          
            if (string.IsNullOrEmpty(ip))
            {
                ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }

            if (ip == "::1")
                ip = "127.0.0.1";
            return ip;
        }

        protected void cb1_CheckedChanged(object sender, EventArgs e)
        {
            if (cb1.Checked == true)
            {
                btnAceptarPassword.Attributes.Remove("disabled");
                btnAceptarPassword.Enabled = true;
                //   btnAceptarPassword.BackColor = System.Drawing.ColorTranslator.FromHtml( "#dae0e5");
              //  btnAceptarPassword.CssClass = "btn btn-light";
             
            }
            else
            {
                btnAceptarPassword.Attributes["disabled"] = "disabled";
                btnAceptarPassword.Enabled = false;
               // btnAceptarPassword.BackColor = System.Drawing.Color.White;
            }
        }
        protected void btnAceptarPassword_Click(object sender, EventArgs e)
        {
            try
            {
                btnAceptarPassword.Attributes["disabled"] = "disabled";
                btnAceptarPassword.Enabled = false;
                bool xx = false;
                var cliente = NtLinkClientFactory.Cliente();
                using (cliente as IDisposable)
                {
                    xx = cliente.CambiarPassword(this.lblUserIdCambiarPassword.Text, this.txtPassword.Text);
                }

                if (xx)
                {
                    this.lblMensajePas.Text = "Contraseña cambiada correctamente, para continuar de click en el boton de cerrar";
                    lblMensajePas.Visible = true;
                    // Cerrar.Enabled = true;

                }
                else
                {
                    lblMensajePas.Text = "Error al cambiar la contraseña intente de nuevo, para continuar de click en el boton de cerrar";
                    lblMensajePas.Visible = true;
                    //Cerrar.Enabled = true;
                    btnAceptarPassword.Attributes.Remove("disabled");
                    btnAceptarPassword.Enabled = true;
                }

                // UpdatePanel1.Update();

                //Thread.Sleep(3000);
             }
            catch (Exception ex)
            {
                lblMensajePas.Text = "Error al cambiar la contraseña intente de nuevo, para continuar de click en el boton de cerrar";
                lblMensajePas.Visible = true;
                btnAceptarPassword.Attributes.Remove("disabled");
                btnAceptarPassword.Enabled = true;

            }
        }
    }
}