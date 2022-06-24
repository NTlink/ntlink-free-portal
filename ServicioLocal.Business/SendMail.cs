using ServicioLocalContract;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.ServiceModel;
using System.Text;

namespace ServicioLocal.Business.CorreoContacto
{
        public  class SendMail : NtLinkBusiness
    {
         string emisor;
        string pwd;
        readonly string _host;
        readonly string _port;
        readonly string sslbool;
        string destinatario;

        //Constructor
        public SendMail()
            {
                emisor = ConfigurationManager.AppSettings["UserNameQuejas"];
                pwd = ConfigurationManager.AppSettings["PasswordQuejas"];
            _host = ConfigurationManager.AppSettings["HostQuejas"];
              _port = ConfigurationManager.AppSettings["PortQuejas"];
                sslbool = ConfigurationManager.AppSettings["enableSslQuejas"];
            destinatario = ConfigurationManager.AppSettings["destinatarioQuejas"];

        }
        /// <summary>
        /// Se envía un correo electronico con texto simple
        /// </summary>
        /// <param name="destinatario">Quien escribe el correo</param>
        /// <param name="asunto">Asunto del correo</param>
        /// <param name="correo">Cuerpo del correo (contenido)</param>
        public void sendMail( string asunto, string correo)
            {
                MailMessage msg = new MailMessage();
                //Quien escribe al correo
                msg.From = new MailAddress(emisor);
                //A quien va dirigido
                msg.To.Add(new MailAddress(destinatario));
                //Asunto
                msg.Subject = asunto;
                //Contenido del correo
                msg.Body = correo;
            
                msg.IsBodyHtml = true;
            //Servidor smtp de hotmail
            SmtpClient clienteSmtp = new SmtpClient();
                clienteSmtp.Host = _host;
                clienteSmtp.Port = int.Parse(_port);
            //clienteSmtp.EnableSsl = bool.Parse(sslbool);
            clienteSmtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            clienteSmtp.UseDefaultCredentials = false;
                //Se envia el correo
                clienteSmtp.Credentials = new NetworkCredential(emisor, pwd);
               clienteSmtp.EnableSsl = bool.Parse(sslbool);
            try
            {
                    clienteSmtp.Send(msg);
                Logger.Debug("Enviado correctamente");
                }
                catch (Exception ex)
                {
                Logger.Debug("Error en correo:"+ex);
                throw new FaultException("Ocurrio un error al enviar el correo");
                //   MessageBox.Show("Error al enviar el correo " + ex.Message);
            }
            }
        }
   }
