using ServicioLocalContract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GafLookPaid
{
    public partial class SiteMaster : MasterPage
    {

        void Page_Init(object sender, EventArgs e)
        {
            
            if (Session["userId"] == null)
            {
                this.Response.Redirect("wfrLogin.aspx");
            }
            else
            {
                int indiceFacturas = 3;
                var perfil = Session["perfil"] as string;
                if (perfil != "Administrador")
                {
                    //this.NavigationMenu.Items.RemoveAt(0);
                    //this.NavigationMenu.Items.RemoveAt(1);

                    indiceFacturas = 3;
                }
                var pantallas = Session["panatallas"] as List<empresaPantalla>;
                if (pantallas != null)
                {
                    var itemsToDelete = this.NavigationMenu.Items[indiceFacturas].ChildItems.Cast<MenuItem>()
                        .Where(menuItem => !pantallas.Any(l => l.pantalla.Equals(menuItem.Text))).ToList();
                    foreach (var item in itemsToDelete)
                    {
                        if (item.Text.ToString() != "items")//medida preventiva
                        {
                            this.NavigationMenu.Items[indiceFacturas].ChildItems.Remove(item);
                        }
                    }
                }
                //this.NavigationMenu.Items[indiceFacturas].ChildItems.
                var sistema = Session["TipoSistema"] as int?;

                if (sistema.HasValue && (sistema.Value == 1 || sistema.Value == 3))
                {
                    //if (perfil == "Administrador")
                    //{
                    this.NavigationMenu.Items.RemoveAt(0);
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(1);//se modifico 3 a 4
                    this.NavigationMenu.Items.RemoveAt(3);
                    //}
                    //else
                    //{
                    //    this.NavigationMenu.Items.RemoveAt(3);
                    //    this.NavigationMenu.Items.RemoveAt(3);
                    //    this.NavigationMenu.Items.RemoveAt(3);
                    //}

                }
                if (sistema.HasValue && sistema.Value == 2)
                {
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(3);

                }

                if (perfil == "Administrador" && (sistema.HasValue && sistema.Value == 0))
                {

                    if (NavigationMenu.Items.Count >= 6)
                    {

                        this.NavigationMenu.Items.RemoveAt(6);
                        this.NavigationMenu.Items.RemoveAt(6);
                        this.NavigationMenu.Items.RemoveAt(0);
                    }

                }

                if (perfil == "Operador" && (sistema.HasValue && sistema.Value == 0))
                {
                    this.NavigationMenu.Items.RemoveAt(0);
                    this.NavigationMenu.Items.RemoveAt(0);

                    this.NavigationMenu.Items.RemoveAt(3);
                    this.NavigationMenu.Items.RemoveAt(3);
                    this.NavigationMenu.Items.RemoveAt(3);

                }


                if (perfil == "Vendedor" && (sistema.HasValue && sistema.Value == 0))
                {
                    this.NavigationMenu.Items.RemoveAt(0);
                    this.NavigationMenu.Items.RemoveAt(0);
                    this.NavigationMenu.Items.RemoveAt(0);
                    this.NavigationMenu.Items.RemoveAt(0);
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(1);
                    this.NavigationMenu.Items.RemoveAt(1);


                    MenuItem item = NavigationMenu.Items[0].ChildItems[2];
                    item.Parent.ChildItems.Remove(item);


                    MenuItem itemi = NavigationMenu.Items[0].ChildItems[2];
                    itemi.Parent.ChildItems.Remove(itemi);


                }


                this.lblEmpresa.Text = Session["razonSocial"] as string;
                this.lblNombreUsuario.Text = Session["nombre"] as string;
                var emision = Session["SaldoEmision"];
                var timbrado = Session["SaldoTimbrado"];
                var contratos = Session["Contratos"] ?? "0";
                lblEmision.Text = emision.ToString();
                lblTimbrado.Text = timbrado.ToString();
                lblContratos.Text = contratos.ToString();


                //------------------Folios restantes----------------

                var emite = Convert.ToInt32(emision);
                if (emite < 10)
                {


                    lblEmision.ForeColor = System.Drawing.Color.Red;

                }

                string rfc = "";
                string correo = "";
                try
                {
                    rfc = Session["RGVRFC"].ToString();
                    correo = Session["UserNameRGV"].ToString();
                }
                catch (Exception ex)
                {
                }

                // HyperLink2.NavigateUrl = 
                // Session["RGVNavigateUrl"] = cpp.llenarURLCPP(rfc, correo);//URL;
                // menuCPP.NavigateUrl = cpp.llenarURLCPP(rfc, correo);//URL;
                MenuItemCollection R = NavigationMenu.Items;

                foreach (MenuItem item in R)
                {
                    if (item.Text == "Servicios")
                    {
                        MenuItemCollection c = item.ChildItems;
                        foreach (MenuItem hijo in c)
                        {


                            //----------------para ir a cuentas por pagar---------

                            CPPagar cpp = new CPPagar();
                            if (hijo.Text == "CuentasPorPagar")

                                hijo.NavigateUrl = cpp.llenarURLCPP(rfc, correo);//URL;
                            break;
                        }
                    }
                }
                //--------------------------------

            }

            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //  hfTiempo.Value = DateTime.UtcNow.ToString(); 
            //if (!this.IsPostBack)
            //{
            //    ActualizarSaldosMaster("333", "22", "1");
            //}
        }




        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void btnActualizarSaldos_OnClick(object sender, EventArgs e)
        {
            var sis = Session["idSistema"] as long?;
            if (sis == null)
            {
                this.Response.Redirect("wfrLogin.aspx");
            }
            var cliente = NtLinkClientFactory.Cliente();
            using (cliente as IDisposable)
            {
                var sistema = cliente.ObtenerSistemaById((int)sis.Value, true);
                Session["SaldoEmision"] = sistema.SaldoEmision;
                Session["SaldoTimbrado"] = sistema.SaldoTimbrado;
                Session["Contratos"] = sistema.TimbresContratados;
                var emision = Session["SaldoEmision"];
                var timbrado = Session["SaldoTimbrado"];
                var contratos = Session["Contratos"] ?? "0";
                lblEmision.Text = emision.ToString();
                lblTimbrado.Text = timbrado.ToString();
                lblContratos.Text = contratos.ToString();
                updateSaldos.Update();
            }
        }

        public Label labelEmision
        {
            get { return lblEmision; }
            set { lblEmision = value; }
        }
        public Label labeltimbrado
        {
            get { return lblTimbrado; }
            set { lblTimbrado = value; }
        }
        public Label labelcontratos
        {
            get { return lblContratos; }
            set { lblContratos = value; }
        }
        public UpdatePanel panel
        {
            get { return updateSaldos; }
            set { updateSaldos = value; }
        }
    }

    public class CPPagar
    {

        public string llenarURLCPP(string RFC, string correo)
        {
            string URL = "";
            try
            {


                TokenClass T = new TokenClass();

                string empre = "desarrollo.ntlink.com.mx";//"www.ntlink.com.mx";
                // correo = "alfredo.alarcon@ntlink.com.mx";
                string token = T.codificar(correo, empre);



                if (token != null)
                {
                    //quitar
                    //  ScriptManager.RegisterStartupScript(Page, Page.GetType(), "newWindow", "fnLoadPageInDialog('Default.aspx?op=view&Id=5665', 'divDocInfo', 'Documento Información', 820, 350);", true);
                    //    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "newWindow", "window.open('https://deploy.cuentasporpagar.com/usuarios/entrar','_blank','status=1,toolbar=0,menubar=0,location=1,scrollbars=1,resizable=1,width=500,toolbar=1');", true);

                    // string cadena="https://deploy.cuentasporpagar.com/clientes/mx/" + RFC + "/?jwt=" + token;
                    //  ScriptManager.RegisterStartupScript(Page, Page.GetType(), "newWindow", "window.open('" + cadena + "','_blank','status=1,toolbar=0,menubar=0,location=1,width=1000,height=800,scrollbars=0,resizable=1,toolbar=0');", true);


                    URL = @"https://cuentasporpagar.com/clientes/mx/" + RFC + "/?jwt=" + token;
                }
                else
                    URL = @"https://cuentasporpagar.com/usuarios/entrar";

                return URL;

            }
            catch (Exception ex)
            {
                URL = @"https://cuentasporpagar.com/usuarios/entrar";
                return URL;

                // frameMain.Attributes["src"] = "https://deploy.cuentasporpagar.com/usuarios/entrar";
                //frameMain.Attributes.Add("style", "min-height:100%,width:100%;");

                //Logger.Error(ex.Message);
            }
        }


    }

    public class TokenClass
    {
        public string Error { get; set; }
        public string Correo { get; set; }

        struct MyObj
        {
            public string iss { get; set; }
            public string usuario { get; set; }
            public string exp { get; set; }
        }

        public TokenClass()
        {
            //
            // TODO: Agregar aquí la lógica del constructor
            //
        }

        //-----------------------------------------------------------------------------------------------------
        // from JWT spec
        private byte[] Base64UrlDecode(string input)
        {
            var output = input;
            output = output.Replace('-', '+'); // 62nd char of encoding
            output = output.Replace('_', '/'); // 63rd char of encoding
            switch (output.Length % 4) // Pad with trailing '='s
            {
                case 0: break; // No pad chars in this case
                case 2: output += "=="; break; // Two pad chars
                case 3: output += "="; break; // One pad char
                default: throw new System.Exception("Illegal base64url string!");
            }
            var converted = Convert.FromBase64String(output); // Standard base64 decoder
            return converted;
        }

        //-----------------------------------------------------------------------------------------------------

        public string CuerpoDecode(string token)
        {
            /*
            var parts = token.Split('.');
            var header = parts[0];
            var payload = parts[1];
            byte[] crypto = Base64UrlDecode(parts[2]);

            var payloadJson = Encoding.UTF8.GetString(Base64UrlDecode(payload));
            var payloadData = JObject.Parse(payloadJson);
            var empresa = (string)payloadData["iss"];
            return empresa;
            */
            return null;
        }

        //-----------------------------------------------------------------------------------------------------
        public string codificar(string correo, string empresa)
        {
            /*
            try
            {
                var utc0 = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
                var issueTime = DateTime.Now;

                //var iat = (int)issueTime.Subtract(utc0).TotalSeconds;
                //var exp = (int)issueTime.AddMinutes(55).Subtract(utc0).TotalSeconds; // Expiration time is up to 1 hour, but lets play on safe side
                var exp = (int)issueTime.AddMinutes(455).Subtract(utc0).TotalSeconds; // Expiration time is up to 1 hour, but lets play on safe side


                string ruta = ConfigurationManager.AppSettings["LlaveToken"];
                string KEY = ConfigurationManager.AppSettings["KEYToken"];

                var privateKey = new X509Certificate2(@ruta, KEY, X509KeyStorageFlags.Exportable | X509KeyStorageFlags.MachineKeySet).PrivateKey as RSACryptoServiceProvider;


                var payload = new Dictionary<string, object>()
        {

          {"iss", empresa},
          {"usuario", correo},
          {"exp", exp}
        };

                string token = Jose.JWT.Encode(payload, privateKey, JwsAlgorithm.RS512);

                return token;
            }
            catch (Exception ex)
            {
                return null;
            }
            */
            return null;
        }

        //-----------------------------------------------------------------------------------------------------
        public void decodificar(string token)
        {
            /*

          try
          {
              this.Error = "0";

              string ruta = ConfigurationManager.AppSettings["CertificadosToken"];
              var privateKey = new X509Certificate2(@ruta).PublicKey.Key as RSACryptoServiceProvider;

              // var privateKey = new X509Certificate2(@"C:\Certificado\deploy.cuentasporpagar.com.crt","" , X509KeyStorageFlags.Exportable | X509KeyStorageFlags.MachineKeySet).PrivateKey as RSACryptoServiceProvider;

              //var privateKey = new X509Certificate2(@"C:\Certificado\privada.p12", "#NTLink$", X509KeyStorageFlags.Exportable | X509KeyStorageFlags.MachineKeySet).PrivateKey as RSACryptoServiceProvider;

              string json = Jose.JWT.Decode(token, privateKey);



              JavaScriptSerializer json_serializer = new JavaScriptSerializer();
              MyObj routes_list = json_serializer.Deserialize<MyObj>(json);


              if (!String.IsNullOrEmpty(routes_list.exp))
              {
                  var epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
                  DateTime fecha;
                  int firstCharacter = routes_list.exp.IndexOf(".");
                  if (firstCharacter != -1)
                  {
                      string fe = routes_list.exp.Remove(firstCharacter);
                      fecha = epoch.AddSeconds(Convert.ToInt64(fe));

                  }
                  else
                      fecha = epoch.AddSeconds(Convert.ToInt64(routes_list.exp));

                  DateTime fecha2 = DateTime.Now;
                  int result = DateTime.Compare(fecha, fecha2);
                  if (result <= 0)
                  { this.Error = "1"; }
                  else
                  {
                      if (!String.IsNullOrEmpty(routes_list.usuario))
                          this.Correo = routes_list.usuario;
                      else
                          this.Error = "1";
                  }
              }
          }
          catch (Exception ex)
          {
              this.Error = "1";
          }
          */

        }

        //-----------------------------------------------------------------------------------------------------

    }
}