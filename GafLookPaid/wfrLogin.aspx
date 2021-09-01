<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="wfrLogin.aspx.cs" Inherits="GafLookPaid.wfrLogin" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
    <%--<link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />--%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
     <%-- <link href="Content/bootstrap.min.css" rel="stylesheet" />
   <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/googleapis-ajax-jquery.min.js"></script>
    <script src="Scripts/bootstrapcdn-bootstrap.min.js"></script>
   <link rel="stylesheet" href="Content/font-awesome.css">--%>

     <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
      <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />
 
    
    <script type="text/javascript">
        function mostrarPassword() {
            
		var cambio = document.getElementById("MainContent_logMain_Password");
		if(cambio.type == "password"){
			cambio.type = "text";
			$('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
		}else{
			cambio.type = "password";
			$('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
		}
        } 
        </script>

   <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional"  >
             <ContentTemplate>-

       <div class="row justify-content-center">    
	   <asp:Panel ID="Panel1" runat="server" DefaultButton="logMain$LoginButton">
	     	 <asp:Login  class="login" ID="logMain" runat="server"  
                LoginButtonText="Iniciar Sesión" LoginButtonType="Button" 
               LoginButtonStyle-CssClass="btn btn-primary" BorderWidth="0px"
                TextLayout="TextOnTop" Width="326px"  Height="183px"
                DisplayRememberMe="False" FailureText="* Error de Inicio de Sesión."  
                PasswordLabelText="Contraseña" PasswordRequiredErrorMessage="*Requerido" TitleText="" 
                UserNameLabelText="Nombre de usuario:" 
               UserNameRequiredErrorMessage="* Requerido"  
               onauthenticate="logMain_Authenticate" BorderStyle= "solid"
                DestinationPageUrl="Default.aspx" 
               style="text-align: center; margin-left: 0px; margin-right: 0px;"  
               BorderColor="#0D0D0D" ForeColor="#000000" border-shadow="1px" 
               BackColor="#CAC8C8" >
                              
                <LayoutTemplate>
                    

    <div class="row" >
               <div class="panel panel-default" style=" background-color:#c1cf65; width:100% ">
                <div class="panel-heading text-center" style="font-size:25px; color:white; background-color:#4285F4;  background-image: linear-gradient(#788924, #c1cf65)" >
                 Portal Ntlink 
                </div>
                <div class="panel-body" style="opacity: 0.77;">
                        <div class="form-group">
                        <div class="text-center">
                              &nbsp;<asp:label id="Label1" runat="server" style="background-color:#c1cf65;font-size:25px;color:white;" Text="Bienvenido"/>                   
                            </div>
                        </div>

                    
                    <div class="form-group">
                        <div class="input-group margin-bottom-sm col-lg-11">
                             <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"  aria-hidden="true"></i></span>
                             <asp:TextBox ID="UserName" runat="server" type="email" class="form-control" placeholder="Email" required= "True"></asp:TextBox>
                         
                        </div>
                        </div>
                        
                    
                        <div class="form-group">
                             <div class="input-group col-lg-11">
                              <span class="input-group-addon"><i class="fa fa-key fa-fw" aria-hidden="true"></i></span>
                             <span class="input-group-append">
                             <asp:TextBox ID="Password" runat="server" type="password" class="form-control" placeholder="Password" required= "True">
                                   </asp:TextBox>
                              <button id="show_password" class="btn btn-success" type="button" onclick="mostrarPassword()"> 
                                  <i class="fa fa-eye-slash icon"  style="font-size:18px"></i>
                              </button> 
                             </span>
                           
                         </div>
                    </div>
                    <div class="row">
                           <div class="col-lg-1">
                      </div>
                          <div class="col-lg-10 text-danger" >
                            
                                 <asp:Literal ID="FailureText"   runat="server" EnableViewState="False"  ></asp:Literal>
                                    
                        </div>
                              <div class="col-lg-1">
                      </div>
                           
                    </div>
                    <div class="form-group last" style="margin-top:10px;">
                        <div class="col-lg-12 text-center">
                             <asp:Button ID="LoginButton" runat="server" class="btn btn-outline-success" 
                                 Text="Ingresar" CommandName="Login" />
                          
                           
                        </div>
                    </div>
                </div>
                <div class="panel-footer" style=" background-color:#4285F4; color:white;  background-image: linear-gradient(#788924, #c1cf65)">
                  <div class="row">
                      <div class="col">
      
                          <a data-toggle="modal"  style="color:white;" data-target="#myModal">Introduzca sus datos</a>
                     
                    </div>
                      <div class="float-right" style=""><b>
                                  <asp:LinkButton runat="server" Text="Olvidé mi contraseña  " ID="btnOlvidar1" style="color:#000"
            onclick="btnOlvidar_Click"/>
                          </b>
                      </div>
                      </div>
                  </div>
            </div>
        </div>
           
                </LayoutTemplate>

                <LoginButtonStyle CssClass="btn btn-primary" />
                <TextBoxStyle BorderWidth="1px" Width="100%" />
            </asp:Login>
		        
                              
         <a href="http://ntlink2.com.mx/ajax/Manual%20factura%203.3.pdf" target="_blank" style="color:#990000;  Font-Size:20px ">
           <span>Manual de Factura</span></a>
           <br /> 
           <a href="http://ntlink2.com.mx/ajax/Manual CFDI Complemento de Pagos.pdf" target="_blank"  style="color:#990000;" Font-Size="20px">
           <span  >Manual de Complemento de Pagos</span></a>

  </asp:Panel>
	         
          
   	
	</div>

  </ContentTemplate>
          <Triggers>
            
                <asp:AsyncPostBackTrigger ControlID="logMain$LoginButton" EventName="Click" />

            </Triggers>
       
        </asp:UpdatePanel>


        <asp:Button runat="server" ID="btnPasswordDummy" style="display: none;"/>
       <asp:ModalPopupExtender runat="server" ID="mpeCambiarPassword" TargetControlID="btnPasswordDummy" 
        BackgroundCssClass="modalBackground"
	 CancelControlID="btnCerrarPassword" PopupControlID="pnlCambiarPassword" />
	<asp:Panel runat="server" ID="pnlCambiarPassword" style="text-align: center;" CssClass="modalPopup" Width="800px" BackColor="White">
		<div class="header"> Cambiar Password </div>

		<asp:Label runat="server" ID="lblUserIdCambiarPassword" Visible="False" />
		Es la primera vez que accedes al sitio, es necesario que cambies tu password.
		<table align="center">
			<tr>
				<td>Password:</td>
				<td>
                <asp:TextBox runat="server" ID="txtConfirmarPassword" TextMode="Password" CssClass="form-control1" />
					
				</td>
			</tr>
			<tr>
				<td />
				<td>
					<asp:RequiredFieldValidator runat="server" ID="rfvPassword" ControlToValidate="txtPassword"
					 ErrorMessage="* Requerido" ValidationGroup="CambiarPassword" Display="Dynamic" CssClass="alert-danger"  />
					<asp:RegularExpressionValidator runat="server" ID="revPassword" ControlToValidate="txtPassword" CssClass="alert-error"
					 Display="Dynamic" ErrorMessage="* El password no cumple con las politicas de seguridad"
					 ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%+_.-]).{8,20})" ValidationGroup="CambiarPassword" />
					<asp:CompareValidator runat="server" ID="cvPassword" ControlToValidate="txtPassword" Display="Dynamic" CssClass="alert-info"
					 ControlToCompare="txtConfirmarPassword" ErrorMessage="* La confirmacion y el password no coinciden"
					  Operator="Equal" ValidationGroup="CambiarPassword" />
				</td>
			</tr>
			<tr>
				<td>Confirmar:</td>
				<td><asp:TextBox runat="server" ID="txtPassword" CssClass="form-control1"  TextMode="Password" /></td>
			</tr>
            
		</table>
        <br />
		<asp:Label ID="Label1" runat="server" Text="Label">Términos y Condiciones</asp:Label>
		<br />
        <center>
        <div>
<asp:Panel ID="pnldynamic" 
           runat="server" 
           BorderColor="" 
           BorderStyle="Solid" 
           BorderWidth="1px" 
           Height="150px" 
           ScrollBars="Auto" 
           Width="80%" 
           BackColor="" 
           Font-Names="Avenir" 
           HorizontalAlign="Center" style="text-align: justify; font-size: x-small;" 
                Font-Size="XX-Small">
    <span class="style1"></span>
    USTED ACEPTA QUE ESTAS CONDICIONES DE USO ENTRARÁN EN VIGOR
PARA TODOS LOS USUARIOS EL 1 DE NOVIEMBRE DE 2020, APLICABLE A
TODAS LAS CUENTAS DE USUARIOS.
Le damos la bienvenida a NT Link.
El presente acuerdo establece los términos y condiciones de uso aceptable de los servicios
de NT Link y establecen un contrato entre usted y NT Link Comunicaciones S.A. de C.V.
(NT Link). El uso de los Servicios de NT Link implica que usted acepta todos los términos y
condiciones contenidos en este acuerdo, incluidas la Política de Privacidad, y el Acuerdo de
Niveles de Servicio.
Nos reservamos el derecho de modificar este Acuerdo en cualquier momento mediante la
publicación de una versión revisada en nuestra página web, la cual entrará en vigor al
momento de su publicación. Si la versión modificada incluye un Cambio Sustancial, se
informará con al menos 30 días de anticipación mediante la publicación de un aviso en
nuestro sitio web.
El presente es un documento importante que usted debe leer cuidadosamente antes
de decidir utilizar los Servicios de NT Link Comunicaciones S.A. de C.V.
NT Link Comunicaciones S.A. de C.V. puede cerrar, suspender o restringir el acceso
a su cuenta o a los servicios proporcionados si infringe cualquiera de los términos
y/o políticas de este acuerdo o cualquier otro acuerdo que haya usted celebrado con
NT Link Comunicaciones S.A. de C.V.
Usted es el único responsable de comprender y dar cumplimiento a todas y cada una
de las leyes, normas y regulaciones que se le puedan aplicar en relación con el uso
que haga de los Servicios de NT Link Comunicaciones S.A. de C.V.
Este Acuerdo no constituye una solicitud de los Servicios de NT Link.
1. Generales
1.1 Acerca de NT Link Comunicaciones S.A. de C.V. NT Link es una empresa
mexicana dedicada a proporcionar servicios de T.I. (Tecnologías de la Información).
Es proveedor autorizado de certificación y emisión de certificados digitales
(PACCFDI) autorizado por el Servicio de Administración Tributaria (SAT) con
número de autorización 57202 con fecha 27 de Julio de 2012. NT Link es un
proveedor de servicios de emisión y timbrado de certificados digitales y actúa como
tal creando, hospedando, manteniendo y proporcionándole nuestros servicios a
través de Internet.
1.2 Legislación Aplicable. NT link Comunicaciones S.A. de C.V. se rige por la
legislación Mexicana vigente y tiene como marco legal:
• Constitución Política de los Estados Unidos Mexicanos
• Código Civil Federal
• Código Penal Federal
• Código Civil de la Ciudad de México
• Ley Federal de Protección de Datos Personales en Posesión de los
Particulares
• Reglamento de la Ley Federal de Protección de Datos Personales en
Posesión de los Particulares
• Código de Comercio
• Ley Federal de Derecho de Autor
• Ley Federal de Propiedad Industrial.
Para la resolución de controversias legales estas se someterán expresamente a la
jurisdicción y competencia de los tribunales de la ciudad de México.
2. Servicios
Vínculos a sitios de terceros.
Si se le presenta un vínculo a un sitio web de un tercero mientras navega en el portal de NT
Link, (tanto si dicho vínculo es proporcionado por NT Link como si está integrado en el sitio
web), usted reconoce que estos vínculos solo se proporcionan para fines de referencia y
comodidad, que los sitios vinculados no están bajo el control de NT Link Comunicaciones
S.A. de C.V. y por tanto no es responsable de los contenidos de ningún vínculo o sitio
vinculado, o cualquier cambio o actualización de éstos.
2.1 Servicios de Emisión y timbrado de CFDI. Nuestros servicios le permiten generar,
enviar y consultar certificados fiscales digitales. NT Link no es un despacho fiscal ni
contable, tampoco es una extensión del Servicio de Administración Tributaria (SAT).
No tenemos ningún control sobre trámites realizados ante la autoridad por usted, ni
podemos actuar como intermediarios ante la misma.
2.2 Carga de sello digital. Su sello digital (CSD) y llave privada son confidenciales,
usted es responsable del uso y manejo de los mismos. Usted debe cargar el sello
dentro del portal de NT Link. NT Link y su personal podrá orientarlo sobre los pasos
a seguir para su registro dentro del portal de servicios.
2.3 Soporte Técnico
Este Acuerdo de Servicio (“Acuerdo de Servicio”) se aplica a los Servicios de
Soporte Técnico (que se definen a continuación) y se celebra entre el cliente que
utiliza los Servicios de Soporte Técnico (“usted” o “su/sus”) y NT Link
Comunicaciones S.A. de C.V. (NTLink) (“nosotros” /“nuestro/nuestra”
/“nuestros/nuestras”). Se le solicita leer atentamente este acuerdo de servicio, ya
que el uso de los mismos implica la aceptación de este acuerdo. El uso que haga de
los Servicios de soporte técnico y/o de cualesquiera de los productos o servicios
proporcionados por NT Link, están sujetos a los términos de uso, declaración de
privacidad, acuerdo de nivel de servicio, aviso de privacidad, uso adecuado de los
recursos, así como cualquier otra política asociada a NT Link.
Los servicios de soporte técnico le conectan con nuestros ingenieros de soporte
técnico para ayudarle con un conjunto de tareas relacionados a la solución del
incidente que se presenta, a través de los siguientes medios:
Vía whatsapp a los siguientes números:
• 554780-0200-Atención a clientes
• 80046-72574-Información y ventas
• 559107-8187-Ventas
• 558250-7656-Soporte Técnico
• 558250-7649-Soporte Técnico
• 556272-5550-Soporte Técnico
• 552405-8190-Soporte Técnico
• 562104-6810-Soporte Técnico
• 554801-7921-Soporte Técnico
Vía Skype a las siguientes cuentas:
Ventas/Atención a clientes
• ntlink_comunicaciones1
• news_1580
Soporte
• ntlink_comunicaciones2
• ntlink_comunicaciones3
• ntlink_comunicaciones4
• ntlinksoporte
Vía telefónica a los siguientes números:
• 554780-0200-Atención a clientes
• 80046-72574-Información y ventas
• 559107-8187-Ventas
• 558250-7656-Soporte Técnico
• 558250-7649-Soporte Técnico
• 556272-5550-Soporte Técnico
• 552405-8190-Soporte Técnico
• 562104-6810-Soporte Técnico
• 554801-7921-Soporte Técnico
Vía correo electrónico a las siguientes cuentas de correo:
• Atención a clientes/ventas
informes@ntlink.com.mx
atnclientes@ntlink.com.mx
jessica.ambros@ntlink.com.mx
Ivonne.ahuatzi@ntlink.com.mx
• Soporte Técnico
soporte@ntlink.com.mx
soporte3@ntlink.com.mx
soporte33@ntlink.com.mx
daniel.lopez@ntlink.com.mx
informes@ntlink.com.mx
La utilización de nuestros servicios de soporte técnico implica la autorización de los
siguientes enunciados:
1.- Consentimiento para servicios remotos o con conexión de datos. El
software que use para hacer uso de los servicios de soporte técnico puede
conectarse a través de terceros, a través de una conexión de datos (p. ej.,
Internet u operador inalámbrico), en los cuales no recibirá una notificación de uso.
    Al utilizar los Servicios de soporte técnico, otorga su consentimiento
para la transmisión de información a través de los servicios de soporte
técnico.
2.- Uso indebido de servicios remotos o con conexión de datos. Ni usted,
ni cualquier usuario quien haya solicitado el servicio de soporte podrá utilizar
dichos servicios de ninguna forma que pueda causar daños a NT Link o a
cualquier usuario, red o sistema informático, así como obstaculizar el uso de
los mismos a cualquier otra persona que haga uso de los mismos. No podrá
utilizar los Servicios de soporte técnico para intentar acceder sin autorización
a cualquier servicio, dato, cuenta o red, sean cuales fueren los métodos
3.- Cooperación y capacidad de soporte. La capacidad de proporcionar los
servicios de soporte técnico depende de su cooperación total y oportuna, así
como de la exactitud e integridad de cualquier información que proporcione.
Antes de que NTLink pueda proporcionar el servicio, debe contar con un
dispositivo con capacidad de acceso a internet y acceso a los sistemas y/o
aplicaciones de NT Link, con licencia válida y que cumpla(n) con los requisitos
mínimos aplicables de capacidad de soporte.
4.- Acceso remoto. Para proporcionar los Servicios de Soporte Técnico, es
posible que los ingenieros de soporte de NT Link deban conectarse a su
dispositivo de forma remota, lo que nos permite controlarlo, ver su pantalla, y
en caso de ser necesario y bajo su consentimiento instalar software y/o
cambiar la configuración de su dispositivo. Puede que se le pida que
descargue o acepte los términos de licencia de software de terceros para
establecer la conexión remota. Usted es responsable de los cobros por
descargas que pudieran aplicarse y de pagar los precios que cobre(n) su(s)
proveedor(es) de conexión de datos (p. ej., a través de Internet, Wi-Fi o el
operador inalámbrico). Usted debe aceptar los siguientes pasos con el fin de
que le proporcionemos los servicios de soporte técnico. Si no somos capaces
de establecer correctamente una conexión de acceso remoto a su dispositivo,
es posible que no podamos brindar los Servicios de Soporte Técnico.
5.- Ingenieros de soporte. Nuestros ingenieros de soporte si bien dan acceso
a respuestas y soluciones a incidentes no son portavoces de NT Link
Comunicaciones S.A. de C.V., por lo que sus puntos de vista no
necesariamente reflejan o representan los de la empresa, sus socios y/o sus
ejecutivos. Siempre tenga precaución al entregar cualquier información de
identificación personal acerca de usted o de los miembros de su familia al
interactuar con nuestros técnicos de soporte. Usted es el único responsable
de sus interacciones con cualesquiera de nuestros ingenieros de soporte.
6.- Copia de seguridad de datos. Usted comprende que los datos se pueden
perder, dañar o degradar, y acepta que es totalmente responsable de la copia
de seguridad de cualquiera y todos los datos, software, información u otros
archivos almacenados en su dispositivo, incluidos todos los discos y unidades,
u otros dispositivos asociados (en conjunto, “Sus Datos”) antes de recibir los
Servicios de Soporte Técnico. Usted entiende y acepta, además, que NT Link
podría tener que transmitir sus datos incluida la información confidencial de su
propiedad y personal almacenada en nuestros archivos a cualquier autoridad
oficial que así lo requiriera previa solicitud y/o notificación oficial. NT Link no
comparte información con terceros, ni con proveedores de servicios para
brindar soporte técnico. Todas estas transmisiones se realizarán de acuerdo
con nuestra Declaración de privacidad.
2.4 Requisitos y manejo de servicios Para solicitar y mantener una cuenta de
servicios con NT Link, debe proporcionar información correcta y actualizada, deberá
cumplir con los siguientes apartados:
a. Deberá enviar a NT Link, el comprobante de pago realizado de acuerdo al
tipo de servicio contratado, indicando el RFC y/o nombre a quien le será
acreditado el pago, así como el servicio adquirido (Emisión de CFDI y/o
Nómina). La omisión de esta información puede retrasar el abono de este
sin que sea responsabilidad por parte de NT Link.
b. Deberá estar inscrito ante el Servicio de Administración Tributario (SAT),
contar con su Firma Electrónica (FIEL) y Certificado de Sello Digital (CSD)
vigente.
c. La información de contacto es su responsabilidad. Debe mantener
actualizado su correo electrónico principal, para que NT Link pueda
comunicarse con usted de manera electrónica. Usted reconoce y acepta
que si NT Link le envía comunicación electrónica y usted no la recibe
debido a que su dirección principal de correo electrónico registrada es
incorrecta, está desactualizada, bloqueada por su proveedor de servicio o
no es apta de cualquier otra forma para recibir comunicación electrónica,
se considerará que NT Link le ha enviado la información y ésta será
considerada satisfactoriamente realizada. Tenga en cuenta que si utiliza un
filtro de correo no deseado que bloquea o desvía los correos electrónicos
de los remitentes que no aparecen en su libreta de contactos o direcciones
de correo válidos, deberá agregar a NT Link a sus contactos para que
pueda ver las comunicaciones que le enviamos.
d. Puede actualizar su correo electrónico o domicilio principal en cualquier
momento desde el sitio web de NT Link
(https://cfdi33.ntlink.com.mx/Facturacion3.3/wfrLogin.aspx), sin embargo
recuerde que el correo electrónico con el cual se registró es su usuario de
acceso. Si su correo ya no es válido y desea cambiar su usuario deberá
solicitar a NT Link el cambio del mismo, cumpliendo con los requisitos para
dicho trámite.
c. Verificación de identidad. Usted autoriza a NT Link, directamente o a través
de terceros, a realizar todas las consultas que consideremos necesarias
para validar su identidad. Dentro de estas consultas se incluye solicitarle
más Información o documentación, requerirle que proporcione su número
de registro federal de contribuyentes o clave única de registro de población
(CURP), requerirle que realice algunos pasos para confirmar la titularidad
de su correo electrónico, o consultar su identidad con bases de datos
oficiales.
d. Si usted deja de utilizar su cuenta por un período mayor o igual a tres (3)
meses, ésta será bloqueada por inactividad y permanecerá así hasta por
un (1) año. Pasado el año será cancelada, su información permanecerá en
archivos históricos por un plazo de tres (3) años. Para reactivar su cuenta
será necesario el pago de reactivación.
2.5 Propietario de la cuenta. Usted solo podrá emitir facturas desde su cuenta y en su
propio nombre o en su capacidad de representante legal de una compañía (en el
caso de que el usuario sea una entidad legal). En el caso de que el usuario sea una
entidad legal, el usuario con acceso y quien controla la cuenta tendrá la autoridad
para delegar en su totalidad o parcial, su autoridad a personas secundarias que 
tienen acceso a la cuenta del usuario; en el entendido de que el usuario (entidad
legal) será responsable de cualquier acción u omisión por parte de las personas que
controlan la cuenta, de conformidad con las condiciones de este apartado.
3. Folios y/o Timbres disponibles en la Cuenta.
3.1 Cada vez que usted adquiere un paquete de CFDI´s, éstos son agregados a su
cuenta, sumando su adquisición al saldo actual.
3.2 Si usted deja de utilizar el servicio por un período mayor o igual a tres (3) meses, su
cuenta quedará “suspendida” por inactividad, para reactivarla será necesario el pago
de reactivación. Si contaba con folios y/o timbres estos estarán disponibles una vez
reactivada la cuenta. Si adquirió un nuevo paquete el saldo anterior será adicionado.
3.3 Los folios y/o timbres, así como las licencias de uso de software propiedad de NT
Link Comunicaciones S.A. de C.V. son PERSONALES e INTRANSFERIBLES. Si
usted adquirió alguno de nuestros productos, está consciente que cuenta con una
licencia de uso, la cual no le da propiedad ni derechos de transferencia o
enajenación de esta.
3.4 Usted podrá solicitar un reembolso en caso de no querer utilizar nuestros servicios
bajo las siguientes condiciones:
a) Si realizó una transferencia errónea a nuestra cuenta, deberá solicitar por
escrito la devolución. El reembolso se realizará en los siguientes 30 días a
su solicitud.
b) En caso de no querer continuar con los servicios, deberá solicitar el
reembolso por escrito indicando los motivos por los cuales desea cancelar
el servicio en un plazo no mayor a catorce (14) días calendario. El reembolso
se realizará en los siguientes 30 días a su solicitud y se realizará únicamente
por el valor del producto y/o servicio adquirido.
4. Pago, facturación, reembolso
4.1 Información de pagos y cuenta. Para adquirir un paquete de facturas y/o alguno
de nuestros productos debe enviar su notificación de pago a su ejecutivo de ventas
o bien al correo informes@ntlink.com.mx. Para el caso de pago en línea con tarjeta
de crédito o débito o bien para depósito con algún intermediario de pagos, será
direccionado al portal del prestador de dicho servicio, NT Link Comunicaciones S.A.
de C.V. no es el responsable de gestionar dicho pago. No somos responsables de
los cobros del emisor de su tarjeta o del banco, así como tarifas adicionales y/o
comisiones como resultado del procesamiento de su pago con tarjeta de
crédito/débito, o pagos a través de intermediarios de pagos. Usted revisar su saldo
de CFDI´s disponibles en el portal de facturación en la siguiente dirección URL
https://cfdi33.ntlink.com.mx/Facturacion3.3/wfrLogin.aspx.Usted acepta mantener
actualizada la información de su cuenta de facturación y de contacto.
4.2 Información de facturación. Al proporcionar a NT Link Comunicaciones S.A de
C.V. la información de pago, usted:
(i) manifiesta que está autorizado a utilizar el método de pago,
(ii) manifiesta que toda la información de pago es exacta, y
(iii) autoriza a NT Link Comunicaciones S.A. de C.V. a cobrarle por el producto y/o
servicios solicitados mediante su método de pago seleccionado.
Podemos facturarle:
(a) por anticipado,
(b) en el momento de la adquisición,
(c) poco después de la adquisición.
4.3 Historial de pagos y errores. Es su responsabilidad revisar su historial de pagos y
notificarnos en caso de errores o cargos no autorizados. Debe ponerse en contacto con
nosotros en un periodo máximo de ciento veinte (120) días desde que el error aparezca
por primera vez en su factura. Entonces, investigaremos el error oportunamente. Si no
lo indica en ese período, nos libera de toda responsabilidad y reclamación por pérdidas
que resulten del error y no tendremos obligación de corregirlo o proporcionar un
reembolso. Si NT Link identifica un error de facturación, lo corregiremos en un plazo
máximo de treinta (30) días.
4.4 Reembolsos. Puede solicitar el reembolso a la compra realizada en un periodo
máximo de catorce (14) días calendario desde la fecha de compra o renovación (si
corresponde). Le reembolsaremos el importe total pagado en un periodo de treinta (30)
días calendario desde la fecha de cancelación. Si su compra la realizó a través del portal
de compras en línea con cargo a su tarjeta de débito o crédito o bien a través de cualquier
intermediario de cobro, el reembolso será únicamente por la cantidad que corresponde
al valor del producto o servicio de NT Link. Los cargos por procesamiento y/o comisiones
son responsabilidad del intermediario de pago y no de NT Link Comunicaciones S.A. de
C.V.
5. Cancelación de su Cuenta.
5.1 Cómo cerrar su Cuenta. Usted puede cancelar su cuenta en un plazo de catorce (14)
días calendario. momento. Simplemente envíe su solicitud al correo
informes@ntlink.com.mx solicitando la cancelación. Deberá incluir información que verifique
que usted es el titular de la cuenta. 
5.2 Restricciones del Cierre de la Cuenta. Usted no puede evadir ninguna investigación
mediante la cancelación de su cuenta. Usted seguirá siendo responsable de todas las
obligaciones relacionadas con ella incluso después de la cancelación de la misma.
6. Errores y Operaciones No Autorizadas.
6.1 Protección para operaciones no autorizadas y errores. Cuando ocurre una
operación no autorizada o un error en su cuenta, NT Link cubrirá el total de los timbres o
folios no autorizados y/o errores, siempre y cuando reúnan los requisitos aplicables y se
sigan los procedimientos que se describen a continuación.
Una operación no autorizada es la emisión de un CFDI que usted no haya realizado y se
demuestre que fue ocasionada por una falla de sistema o existen elementos sustentables
que demuestren que su cuenta fue vulnerada y se hizo mal uso de la misma.
Si usted otorga a un tercero acceso a su cuenta (dándole la Información para iniciar sesión)
y realiza operaciones sin su conocimiento o permiso, usted será el responsable de dicho
uso. Se produce un fallo cuando hay un error en el perfil de su cuenta, en el historial o en la
confirmación del sellado que le enviamos por correo electrónico.
6.2 Requisitos de Notificación.
a. Debe notificar de inmediato a NT Link si cree que:
• ha habido una operación no autorizada o acceso no autorizado a su cuenta;
• existe un error en su relación de CFDI emitidos (usted puede acceder a su
relación en la sección de reportes) o en la confirmación de la transacción que
se le envió por correo electrónico;
• su contraseña o su clave de usuario se han visto comprometidas;
• necesita más Información acerca de una operación que aparece en reporte de
CFDI´s emitidos.
b. Para reunir los requisitos para la protección por operaciones no autorizadas, nos lo
debe notificar en el plazo de treinta (30) días posteriores a la primera operación no
autorizada del historial de su cuenta. Nosotros extenderemos el período de tiempo
a 60 días si por algún motivo justificado y acreditable, usted no pudo notificarnos en
el plazo establecido. Debe revisar su relación de CFDI´s regularmente en su cuenta
para asegurarse de que no haya operaciones no autorizadas o errores. También
debe comprobar las confirmaciones de estas operaciones para asegurarse de que
cada una haya sido autorizada y sea correcta.
Para operaciones no autorizadas o errores en su cuenta, notifíquenos del siguiente modo:
• Envíe un correo electrónico a informes@ntlink.com.mx indicando el problema.
• Llame al Servicio de Atención al Cliente de NT Link a los teléfonos (55) 4780-0200,
(55) 5601-7570, 01-800-467-2574.
Cuando nos notifique, facilítenos toda la Información que se describe a continuación:
• Su nombre y correo electrónico registrado en su cuenta;
• Una descripción de la supuesta operación no autorizada o error y una explicación de
por qué cree que es incorrecto o de por qué necesita más Información para identificar
la transacción;
Si nos notifica de manera verbal, podemos solicitarle que nos envíe su queja o pregunta por
escrito en el plazo de 10 días hábiles. Durante el curso de la investigación, podemos
solicitarle Información adicional.
6.3 Medidas de NT Link una vez recibida su Notificación. Una vez que usted nos
notifique acerca de presuntas operaciones no autorizadas o errores, o si nos enteramos de
ellos de alguna otra forma, seguimos el siguiente procedimiento:
• Realizaremos una investigación para determinar si existe error o se realizó una
operación no autorizada.
• Cambiaremos su contraseña de acceso a la cuenta como medida de seguridad.
• Realizaremos la investigación en un plazo de 10 días hábiles a partir de la fecha en
que recibimos su notificación de operación no autorizada o error. Si su cuenta es
nueva (la primera transacción en su cuenta se hizo antes 30 días hábiles a partir de
la fecha en que nos notificó), entonces podríamos tardar hasta 20 días hábiles en
concluir la investigación. Si necesitamos más tiempo, podríamos tardar hasta 45 días
en concluir la investigación.
• Si determinamos que necesitamos más tiempo para concluir la investigación,
abonaremos provisionalmente en su cuenta el número de folios y/o timbres que
amparen la o las operaciones no autorizadas o error sospechoso. Recibirá el abono
provisional de manera inmediata a la fecha en que recibimos su aviso, así tendrá la
posibilidad de continuar operando hasta que concluya la investigación.
• Le informaremos de nuestra decisión en un lapso de 3 Días Hábiles a partir de haber
concluido la investigación.
• Si determinamos que hubo una operación no autorizada o error, abonaremos
rápidamente el importe total en su cuenta en un lapso de 1 día hábil a partir de nuestra
determinación. O si ya recibió un abono provisional, podrá quedarse con dicho
importe.
• Si determinamos que no hubo una operación no autorizada o error, incluiremos una
explicación acerca de nuestra decisión en el correo electrónico que le enviemos. Si
recibió un abono provisional, lo quitaremos de su cuenta. Puede solicitar copias de
los documentos que utilizamos en la investigación.
6.4 Errores de NT Link. Nosotros rectificaremos cualquier error que descubramos. Si el
error provoca que reciba un importe inferior al que le corresponde, NT Link abonará en su
cuenta la diferencia. Si el error provoca que reciba un importe mayor del que le corresponde,
NT Link puede quitar los timbres y/o folios adicionales de su cuenta.
6.5 Sus Errores. Si usted envía un pago por un importe incorrecto (por ejemplo, debido a
un error tipográfico), su única alternativa será ajustar el número de timbres y/o folios de
acuerdo al importe pagado. NT Link no reembolsará ni cancelará los pagos que haya
realizado por montos erróneos. Podrá solicitar un reembolso cuando haya hecho una
transferencia a NT Link por error.
7. Actividades Restringidas.
7.1 Actividades Restringidas. Durante la vigencia de la relación comercial que usted tenga
con NT Link Comunicaciones a través de nuestro sitio web, nuestros productos y/o servicios,
usted no deberá:
a. Incumplir con este este acuerdo, ni con ninguna de las políticas de uso de NT Link;
b. Infringir cualquier ley, estatuto, ordenanza o reglamento;
c. Infringir los derechos de autor, patente, marca comercial, secreto comercial u otros
derechos de propiedad intelectual de NT Link o de cualquier otro tercero o los
derechos de publicidad o privacidad;
d. Vender artículos falsificados;
e. Actuar de una manera que sea difamatoria, denigrante, amenazante u hostil con
nuestros empleados, agentes u otros usuarios;
f. Proporcionar Información falsa, inexacta o engañosa;
g. Involucrarse en actividades y/o transacciones potencialmente fraudulentas o
sospechosas;
h. Negarse a cooperar en una investigación o a proporcionar confirmación de su
identidad o cualquier otra Información que usted nos proporcione;
i. Controlar una cuenta que está asociada a otra que se haya visto involucrada en
cualquiera de estas actividades restringidas;
j. Conducir su empresa o utilizar los servicios NT Link de manera tal que tenga o pueda
tener como resultado quejas, controversias, reclamaciones, cancelaciones, contra
cargos, comisiones, multas, penalizaciones y otras responsabilidades ante NT Link,
otros usuarios, terceros o usted;
k. Revelar o distribuir Información de otros usuarios a terceros o utilizar la Información
para fines de marketing, a menos que reciba el consentimiento expreso del usuario
para hacerlo;
l. Enviar correos electrónicos no solicitados a usuarios, ni utilizar los servicios NT Link
para cobrar cantidad alguna por enviar, o ayudar a enviar correos electrónicos no
solicitados a terceros;
m. Adoptar medidas que impongan una carga transaccional no razonable o
desproporcionadamente grande en los servicios de NT Link o en nuestro sitio web,
software, sistemas (incluida cualquier red y servidor que utilice para proporcionar
cualquiera de los servicios de NT Link) operados por nosotros o en nuestro nombre
(ataques DDoS);
n. Facilitar la difusión de virus, caballos de troya, malware, gusanos u otras rutinas de
programación informática que intenten o puedan dañar, interrumpir, corromper,
maltratar o interferir negativamente, interceptar o expropiar u obtener acceso no
autorizado a cualquier sistema, datos, información o servicios de NT Link;
o. Utilizar un proxy anónimo; utilizar robots, arañas ni otros dispositivos automáticos o
procesos manuales para controlar o copiar nuestros sitios web sin nuestro
consentimiento previo por escrito;
p. Uso de cualquier dispositivo, software o rutina para infringir las restricciones de
nuestros encabezados de exclusión de robots o para interferir o interrumpir o intentar
interferir con nuestro sitio web, software, sistemas (incluida cualquier red y servidores
que se utilicen para proporcionar cualquiera de los servicios de NT Link) operados
por nosotros o en nuestro nombre, cualquiera de los servicios de NT Link o con el
uso de otro usuario de cualquiera de los servicios de NT Link;
q. Adoptar medidas que pueden provocar que perdamos cualquiera de los servicios de
nuestros proveedores de servicios de Internet, procesadores de pago u otros
proveedores o proveedores de servicios; o
r. Abuso (como usuario pagador o como usuario receptor) de cualquiera de nuestros
servicios de soporte, capacitación, atención a clientes, administración y/o desarrollo.
8. Su Responsabilidad - Medidas que Nosotros Podemos Adoptar.
8.1 Su responsabilidad.
a. General. Usted es responsable de todas las cancelaciones, devoluciones de cargo,
reclamaciones, comisiones, multas, penalizaciones y otras responsabilidades en las
que hayan podido incurrir NT Link, un usuario de NT Link o un tercero, provocadas u
originadas del incumplimiento de este acuerdo y/o del mal uso en la utilización de los
productos o servicios NT Link. Acepta reembolsar a NT Link, a un usuario de NT Link
o tercero por cualquiera y cada una de dichas responsabilidades.
b. Responsabilidad por las Instrucciones dadas por usted en su cuenta. NT Link
se basará en cualquier instrucción que usted haya dado a su cuenta (ya sea de forma
verbal o por escrito) una vez que se haya autenticado. NT Link no será responsable
de pérdidas o daños que usted o cualquier otra persona pueda sufrir cuando NT Link
actúe de buena fe de conformidad con dichas instrucciones, a menos que se
demuestre negligencia por parte de NT Link.
8.2 Reembolso por su responsabilidad. En caso de que usted sea responsable por
importes adeudados, NT Link cancelará el acceso a todos los servicios que tenga
contratados, hasta que cubra el adeudo.
8.3 Medidas de NT Link: actividades restringidas. Si NT Link, a su entera discreción, cree
que usted se ha visto involucrado en actividades restringidas, podemos adoptar varias
medidas para proteger a NT Link Comunicaciones S.A. de C.V., sus miembros, otros
terceros o usted, contra cancelaciones, devoluciones de cargo, reclamaciones, comisiones,
multas, penalizaciones y cualquier otra responsabilidad. Entre las medidas que podemos
adoptar se incluyen, sin limitarse a:
a. Cancelar, suspender o limitar el acceso a su cuenta y/o a los servicios NT Link;
b. Negarnos a proporcionarle los servicios de NT Link ahora y en el futuro;
c. Limitar su acceso a nuestro sitio web, software, sistemas (incluida cualquier red y
servidores que se utilizan para proporcionar cualquiera de los servicios de NT Link)
operados por nosotros o en nuestro nombre; o
d. Retener su acceso e información por un período de tiempo razonablemente
necesario para protegernos contra el riesgo de responsabilidad ante NT Link o un
tercero o si creemos que puede estar involucrado en actividades o transacciones
potencialmente sospechosas o fraudulentas.
8.4 Medidas de NT Link, Cierre de la Cuenta, cancelación del servicio, acceso
restringido a la Cuenta; criterios confidenciales. NT Link se reserva, a su entera
discreción, el derecho de suspender o dar por terminado este acuerdo o acceso o uso de
su sitio web, software, sistemas (incluida cualquier red y servidores que se utilizan para
proporcionar cualquiera de los servicios de NT Link) operados por nosotros o en nuestro
nombre, o parte o la totalidad de los servicios de NT Link por cualquier motivo y en cualquier
momento tras previo aviso; lo anterior sin responsabilidad para NT Link o la necesidad de
resolución judicial previa. Si limitamos el acceso a su cuenta, le daremos aviso de nuestras
medidas y la oportunidad para solicitar el restablecimiento del acceso si, a nuestra entera
discreción, lo estimamos adecuado. Además, reconoce que la decisión de NT Link de
adoptar ciertas medidas, incluidas limitar el acceso a su cuenta, colocar retenciones o
imponer reservas, pueda ser en función de criterios confidenciales esenciales para nuestra
gestión del riesgo, la seguridad de las cuentas de los usuarios, el sistema NT Link o los
proveedores de servicios de NT Link. Acepta que NT Link no tiene obligación de revelarle
los detalles del manejo del riesgo o de sus procedimientos de seguridad.
8.5 Transgresiones de la Política de uso aceptable. Si usted infringe la Política de Uso
Aceptable, además de las medidas antes mencionadas, usted será responsable ante NT
Link del importe de los daños provocados a NT Link por cada infracción a sus políticas.
Usted acepta las sanciones que pudieran ser aplicables dictaminadas por la autoridad
competente por transgredir a las mismas tomando en cuenta los daños reales aunque estos
sean difícil o imposibles de calcular ocasionados a NT Link. NT Link puede presentar
cálculos y montos adicionales.
8.6 Cumplimiento con las Leyes de Protección de Datos Personales en Posesión de
los Particulares. NT LINK COMUNICACIONES S.A. de C.V., mejor conocido como NT
LINK, es el responsable del uso y protección de sus datos personales. Los datos personales
que recabamos de usted, los utilizamos para el alta, registro y procesamiento de CFDI.
Usted tiene derecho a conocer qué datos personales tenemos de usted, para qué los
utilizamos y las condiciones del uso que les damos (Acceso). Asimismo, es su derecho
solicitar la corrección de su información personal en caso de que esté desactualizada, sea
inexacta o incompleta (Rectificación); que la eliminemos de nuestros registros o bases de
datos cuando considere que la misma no está siendo utilizada adecuadamente
(Cancelación); así como oponerse al uso de sus datos personales para fines específicos
(Oposición). Estos derechos se conocen como derechos ARCO.
Para el ejercicio de cualquiera de los derechos ARCO, usted deberá presentar la solicitud
respectiva a través del siguiente medio: correo electrónico: informes@ntlink.com.mx
8.7 En cumplimiento de las Leyes de Protección de Datos, cada una de las Partes debe,
sin limitación:
a. implementar y mantener en todo momento todas las medidas de seguridad
apropiadas en relación con el procesamiento de datos personales;
b. mantener un registro de todas las actividades de procesamiento llevadas a cabo en
virtud de estas Condiciones; y
c. no hacer o permitir deliberadamente que se haga algo que pueda llevar a que la
otra parte no cumpla las Leyes de Protección de Datos.
9. Controversias con NT Link.
9.1 Primero póngase en contacto con NT Link. Si surgiera una controversia entre Usted
y NT Link, nuestro objetivo es conocer y abordar sus problemas y, si no logramos hacerlo
de manera que Usted quede satisfecho, proporcionarle un medio neutral y eficiente para
resolver la controversia rápidamente. Las controversias entre Usted y NT Link en relación
con los servicios de NT Link pueden ser reportadas al servicio de atención a clientes en
cualquier momento o llamando al 554780-0200 desde las 8:00 a.m. hasta las 6:00 p.m..,
(hora de la Ciudad de México).
    9.2 Legislación Aplicable y Jurisdicción Las partes acuerdan que cualquier controversia
o reclamación que Usted pueda tener en contra de NT Link derivada de este acuerdo habrá
de ser resuelta por los tribunales competentes de la Ciudad de México; renunciando las
partes expresamente a cualquier otra jurisdicción que les pudiera corresponder por razón
de sus domicilios presentes o futuros, o por cualquier otro motivo. Este acuerdo será regido
por las leyes aplicables de los Estados Unidos Mexicanos.
9.3 Notificaciones a Usted. Usted acepta que NT Link puede enviarle comunicaciones
electrónicas con respecto a su cuenta, los servicios de NT Link y este acuerdo. NT Link se
reserva el derecho a cerrar su cuenta si retira su consentimiento para recibir comunicaciones
electrónicas. Se considerará que todas las comunicaciones electrónicas son recibidas por
usted dentro de las siguientes 24 horas desde el momento en que han sido publicadas en
nuestro sitio web o se las hayamos enviado por correo electrónico.
9.4 Procesos Judiciales de Insolvencia. Si Usted inicia o se inicia un proceso judicial en
su contra de conformidad con alguna disposición de una ley de quiebra o concurso
mercantil, NT Link tendrá derecho a recuperar todos los costos y gastos razonables
(incluidos los honorarios y gastos de abogado) en que se haya incurrido de conformidad con
la ejecución de este acuerdo.
9.5 Liberación de NT Link. Si Usted tiene una controversia con uno o más usuarios, Usted
libera y sacará en paz y a salvo a NT Link y sus filiales (sus funcionarios, directores, agentes,
empresas de participación conjuntas, empleados y proveedores) de cualquier reclamación,
demanda y daño (directo o indirecto) de cualquier tipo y naturaleza que pudieran derivarse
de dichas controversias o tengan cualquier relación con las mismas.
10. Términos Generales.
10.1 Limitaciones de responsabilidad. EN NINGÚN CASO NOSOTROS, NUESTRA
CASA MATRIZ, NUESTRAS SUBSIDIARIAS Y EMPRESAS FILIALES, NI NUESTROS
TRABAJADORES, DIRECTORES, AGENTES, EMPRESAS CONJUNTAS, EMPLEADOS
O PROVEEDORES, SEREMOS RESPONSABLES POR LA PÉRDIDA DE GANANCIAS O
POR CUALQUIER DAÑO ESPECIAL, DERIVADO O RESULTANTE (INCLUIDO, PERO NO
LIMITADO A, LOS DAÑOS POR PÉRDIDA DE DATOS O PÉRDIDA DE NEGOCIOS) QUE
SURJA DE O EN RELACIÓN CON NUESTRO SITIO WEB, EL SOFTWARE, LOS
SISTEMAS (INCLUIDA CUALQUIER RED Y SERVIDORES USADOS PARA BRINDAR
CUALQUIERA DE LOS SERVICIOS DE NT LINK) UTILIZADOS POR NOSOTROS O EN
REPRESENTACIÓN NUESTRA, LOS SERVICIOS DE NT LINK O ESTE ACUERDO
(CUALQUIERA QUE SEA SU ORIGEN, INCLUYENDO NEGLIGENCIA). A MENOS QUE Y
EN LA MEDIDA EN QUE ESTÉ PROHIBIDO POR LA LEY, NUESTRA RESPONSABILIDAD
Y LA RESPONSABILIDAD DE NUESTRA MATRIZ, NUESTRAS FILIALES Y
SUBSIDIARIAS, NUESTROS TRABAJADORES, DIRECTORES, AGENTES, EMPRESAS
CONJUNTAS, EMPLEADOS Y PROVEEDORES, ANTE USTED O CUALQUIER
TERCERO, EN CUALQUIER CIRCUNSTANCIA, SE LIMITA AL IMPORTE REAL DE LOS
DAÑOS DIRECTOS.
“Eventos que Escapan de Nuestro Control” se refiere a cualquier causa que escapa de
nuestro control razonable y nos impide proporcionar el Sitio web o cumplir con cualquiera
de nuestras otras obligaciones en virtud de este Acuerdo de Servicio. Entre estas causas
se incluyen incendio, inundación, tormenta, revuelta, disturbio civil, guerra, accidente
nuclear, actividad terrorista y eventos de fuerza mayor.
10.1 Indemnización. Usted acepta defender, indemnizar y exonerar a NT Link, sus filiales
y a nuestros funcionarios, directores, agentes, empresas de participación conjunta,
empleados proveedores de servicios y proveedores de cualquier responsabilidad ante
cualquier reclamación, demanda (incluidos los honorarios de abogados), multas o cualquier
otra responsabilidad en la que haya incurrido algún tercero que surja del incumplimiento de
usted (o el incumplimiento de sus empleados o agentes) de este acuerdo o del uso de los
servicios de NT Link.
10.2 Licencia NT Link a Usted. Si está utilizando software de NT Link, como una API, u
otra aplicación de software que haya descargado a su computadora, dispositivo u otra
plataforma, o a los que haya accedido a través de la web o una plataforma móvil, NT Link
le concede una licencia revocable, no exclusiva y no transferible, para acceder o utilizar el
software de NT Link de acuerdo con la documentación respectiva. Esta licencia incluye el
software y todas las actualizaciones, nuevas versiones y software de reemplazo solo para
su uso personal. Usted no podrá rentar, alquilar o transferir de otra manera sus derechos
en el software a un tercero. Debe cumplir con los requisitos de utilización, acceso e
implementación contenidos en toda la documentación de NT Link que acompaña los
servicios de NT Link. Si no cumple con los requisitos de implementación, de acceso y
utilización, será responsable de todos los daños que resulten y le afecten a usted, a NT Link
y/o terceros. NT Link puede haber integrado ciertos materiales y tecnología de terceros en
cualquier web u otra aplicación, incluidos su software, o puede acceder y utilizar ciertos
materiales y tecnología de terceros para facilitar los servicios de NT Link, sin embargo éstos
derechos no han sido transferidos de ninguna manera, Usted acepta no modificar, alterar,
reparar, copiar, reproducir, adaptar, distribuir, mostrar, publicar, aplicar ingeniería inversa,
traducir, descompilar, ni ningún otro intento de crear ningún código fuente que se derive del
software o de cualquier material o tecnología propiedad de NT Link o de terceros. Usted
reconoce que todos los derechos, títulos e intereses del software de NT Link son propiedad
de NT Link Comunicaciones S.A de C.V. y los materiales de terceros integrados en ellos
son propiedad de los proveedores de servicios externos. Cualquier aplicación de software
de terceros que utilice en el sitio web de NT Link estará sujeta a la licencia que acordó con
los terceros que le proporcionan este software. NT Link no posee, controla ni tiene ninguna
responsabilidad u obligación con respecto a ninguna aplicación de software de un tercero
que usted opte por utilizar en el sitio web.
10.3 Licencia de Comercios a NT Link. Sin perjuicio de las cláusulas anteriores, si usted
es un comercio o empresa que usa los servicios NT Link, mediante el presente acuerdo
usted nos concede un derecho (previa notificación) gratuito para usar y mostrar
públicamente, durante el periodo de vigencia de este acuerdo, sus marcas comerciales (de
forma enunciativa mas no limitativa), marcas registradas y no registradas, nombres
comerciales, marcas de servicio, logotipos, nombres de dominio y otras designaciones de
su propiedad, que se le hayan licenciado o que usted use con el fin de identificarlo como un
cliente que utiliza los servicios de NT Link.
10.4 Propiedad Intelectual. "ntlink.com.mx," “ntlink2.com.mx”, “NT Link”, “NTLink” y todas
las otras URL´s, logotipos y marcas relacionadas con los servicios o productos licenciados
de NT Link son marcas o nombres comerciales de NT Link Comunicaciones S.A. de C.V. o
de sus licenciantes. No podrá copiar, imitar o usarlas sin previo consentimiento escrito de
NT Link Comunicaciones S.A. de C.V.. Además, todos los encabezados de página, los
gráficos personalizados, los iconos de botón y las secuencias de comandos son marcas de
servicio, marcas comerciales y/o imagen comercial de NT Link. No podrá copiar, imitar o
usarlas sin nuestro previo consentimiento por escrito. No podrá alterar, modificar o cambiar
estos logotipos y/o nombres, ni mostrarlos de ninguna forma que implique patrocinio o
aprobación por parte de NT Link. Todos los derechos, títulos e intereses en el sitio web de
NT Link además de todo lo contenido en él, sus servicios, la tecnología relacionada
cualquiera sea, y contenido creado o derivado de lo anteriormente expuesto es propiedad
exclusiva de NT Link Comunicaciones S.A. de C.V. y sus licenciantes.
10.5 Forma de Contactarlo. A efecto de contactarlo de forma más eficiente, nosotros
podemos de vez en cuando contactarlo utilizando mensajes automarcados o pregrabados
o mensajes de texto al (a los) número(s) telefónicos que usted nos haya proporcionado.
Nosotros podemos realizar tales llamadas o enviar dichos mensajes de texto a efecto de
(proveerle notificaciones con respecto a su cuenta o la actividad de su cuenta; investigar o
prevenir fraude, o cobrar una algún adeudo de su parte. Usted acuerda que nosotros
podemos contactarlo utilizando mensajes automarcados o pregrabados o mensajes de texto
a fin de llevar acabo los fines descritos con antelación.
Sus Opciones. Usted no tiene la obligación de consentir la recepción de mensajes
automarcados o pregrabadas o mensajes de textos para poder utilizar y disfrutar de los
servicios y productos de NT Link. Cuando NT Link esté requerido para obtener su
consentimiento a tales comunicaciones, usted puede optar por revocar su consentimiento
contactando a soporte al cliente al (55) 4780-0200, (55) 5601-7570, 01-800-467-2574 o a
los números que se muestran en nuestro sitio web, informándonos de sus preferencias.
10.6 Marketing. NT Link frecuentemente realiza alianzas con otros proveedores de
servicios en beneficio de nuestros clientes. Es posible que encuentre ligas y/o anuncios
hacia terceros, sin embargo, de acuerdo a nuestro aviso de privacidad de datos y a la ley
de protección de datos personales en posesión de los particulares NT LINK NO
PORPORCIONA NINGUNA INFORMACIÓN. La comunicación con terceros será
directamente entre usted y el prestador del servicio.
10.7 Seguridad de la Contraseña. Usted es responsable de mantener la adecuada
seguridad y control de cualquiera de las identificaciones, contraseñas, números de
identificación personal (NIP) o de cualquier otro código que usted utilice para obtener acceso
a los Servicios de NT Link.
10.8 Impuestos. Es su responsabilidad determinar qué impuestos, en caso de haberlos, se
aplican a los pagos que hace o recibe, así como también recaudar, reportar y remitir el
impuesto correcto a la autoridad fiscal pertinente. NT Link no es responsable de determinar
si se aplican impuestos a su transacción, ni de recaudar, reportar o remitir ningún impuesto
que surja de cualquier transacción realizada por usted. Todas las compras realizadas sin
importar el giro o tipo de negocio y/o usuario, estarán sujetas a la tasa ordinaria del Impuesto
al Valor Agregado (“IVA”).Usted recibirá una factura con desglose de IVA por cada compra
que realice en cumplimiento con la legislación fiscal mexicana.
10.9 Acuerdo Total y Vigencia. Este acuerdo, junto con cualquier política aplicable y
publicada por NT Link, establece el acuerdo completo entre usted y NT Link
Comunicaciones S.A. de C.V. en relación con la prestación de servicios para emisión y
timbrado de CFDI. Cualquier término que deba sobrevivir por su naturaleza sobrevivirá a la
cancelación de este acuerdo. Si alguna disposición de este acuerdo se invalida o no es
aplicable, dicha disposición se suprimirá y se deberán aplicar las disposiciones restantes.
    10.10 Cesión. Usted no puede transferir ni ceder los derechos u obligaciones que tenga en
virtud de este acuerdo sin el previo consentimiento por escrito de NT Link. NT Link se
reserva el derecho de transferir o ceder este acuerdo o cualquier derecho u obligación que
forme parte de este acuerdo en cualquier momento, mediante simple aviso a usted en los
términos de este acuerdo.
10.11 No Renuncia. Nuestra omisión o retraso en el ejercicio de las acciones
correspondientes ante un incumplimiento hacia usted o de otros no significará una renuncia
a nuestro derecho de ejercer acciones con respecto a tal incumplimiento o un
incumplimiento posterior o similar.
10.12 Subrogación de Derechos. Si NT Link paga una reclamación, cancelación o Contra
cargo que usted haya presentado en contra de un tercero que ofrezca los servicios de NT
Link, usted acepta que NT Link se subrogará en sus derechos en contra del tercero en
relación con el pago, y que ejerza dichos derechos directamente o en su nombre.
11. Definiciones.
• "Comisiones" son aquellos montos que se aplican al uso de servicios a través de
plataformas de pago y según se describe en el Anexo A.
• "datos personales" Cualquier información concerniente a una persona física
identificada o identificable. Se considera que una persona física es identificable
cuando su identidad pueda determinarse directa o indirectamente a través de
cualquier información como puede ser nombre, número de identificación, datos de
localización, identificador en línea o uno o varios elementos de la identidad física,
fisiológica, genética, psíquica, patrimonial, económica, cultural o social de la persona.
• "Error" se refiere a una falla en el proceso.
• "Leyes de Protección de Datos" se refiere a la ley emitida el 5 de Julio de 2010 en
el diario oficial de la federación y que regula el tratamiento legítimo, controlado e
informado, a efecto de garantizar la privacidad y el derecho a la autodeterminación
informativa de las personas.
• "responsable del tratamiento de datos" (o simplemente el "responsable del
tratamiento") y "encargado del tratamiento de datos" (o simplemente el "encargado
del tratamiento") y el "interesado" tienen el significado que se otorgue a dichos
términos conforme a las Leyes de Protección de Datos y se refiere al responsable de
proteger la privacidad y confidencialidad de la información.
• “Actividades Restringidas” se refiere a todas aquellas actividades descritas en el
apartado 7 de este acuerdo y que están restringidas por NT Link Comunicaciones
S.A. de C.V.
• “Autorizar” o “Autorización” se refiere a la autorización expresa (ya sea por parte
del propietario de la cuenta o de NT Link) para realizar cualquier operación.
• “Cambio Sustancial” se refiere a un cambio en los términos de este acuerdo que
reduzca o aumente derechos y/o responsabilidades.
• “Cancelación” se refiere al término de la relación comercial entre usted y NT Link
por alguna de las siguientes causas: (a) su pago ha sido invalidado por el banco o
intermediario de pago en repetidas ocasiones (b) Porque usted así lo decide y lo
notifica a NT Link. (c) usted realizó actividades que infringen este acuerdo o cualquier
otra Política,(d) Alguna autoridad oficial notifica a NT Link que su cuenta debe ser
cancelada o (e) NT Link resuelve una Reclamación en su contra.
• “Comercio NT Link” y “Vendedor” se utilizan de manera indistinta y se refieren a
un usuario que comercializa bienes y que utiliza los productos y/o servicios de NT
Link para facturación.
• “Comunicaciones” se refiere a todo el intercambio de información entre usted y NT
Link en relación con su operación.
• “Contenido Digital” se refiere a aquellos productos que se entregan y utilizan en
formato electrónico.
• “Controversia” se refiere a la presentación de una inconformidad surgida a través
de alguna diferencia entre NT Link y usted.
• “Cuenta” o “Cuenta NT Link” se refiere a la asignación que se le da como usuario
de los productos y/o servicios de NT Link.
• “Cuenta Verificada” se refiere a una cuenta que indica que NT Link ha verificado
que el titular de la misma tiene control legal de ella. Una cuenta con estado verificado
no constituye un aval del usuario ni una garantía de las prácticas empresariales del
mismo
• “Días Hábiles” se refiere como los días de lunes a viernes, excluyendo aquellos días
festivos oficiales reconocidos en México.
• “Días” se entiende como los días calendario.
• “Información” se refiere al conjunto de datos que en conjunto y ordenados facilitan
su interpretación y dan sentido a los mismos.
• “NT Link,” “nosotros”, “nuestro”, “nuestra”, “nuestros” o “nuestras” se refiere
a NT Link Comunicaciones S.A. de C.V.
• “Perfil de Cuenta” se refiere a los privilegios que le fueron otorgados con su cuenta
para realizar diversas operaciones dentro de los servicios de NT Link.
• “Política” o “Políticas” se refiere a los lineamientos publicados por NT Link
Comunicaciones S.A. de C.V. los cuales deben seguirse para hacer uso de los
servicios de NT Link.
• “Reclamación” se refiere a cualquier observación que presente a NT Link en
relación con su cuenta.
• “Servicio de Atención al Cliente” es la atención que NT Link ofrece en línea o a
través de los medios descritos en el apartado 2.3 de este acuerdo.
• “Servicios NT Link” se refiere a todos los productos y/o servicios ofrecidos por NT
Link Comunicaciones S.A. de C.V.
• “Transacción No Autorizada” se refiere a una solicitud de compra realizada a
través de un intermediario de pagos que fue rechazada.
• “Usuario” se entiende como la persona o entidad que utiliza los Servicios NT Link,
incluido usted.
Anexo A: Comisiones.
Generalidades. NT Link Comunicaciones S.A. de C.V. no cobra ningún tipo de comisiones
por sus servicios.
Comisiones bancarias y de tarjeta de crédito. Puede que su banco o la compañía
emisora de su tarjeta de crédito o débito le cobre comisiones por el envío de fondos. NT
Link Comunicaciones S.A. de C.V. no se hace responsable de ninguna comisión que le
cobre su banco, compañía de tarjeta de crédito o débito u otra institución financiera en
función de su uso.
<br />
</asp:Panel>
</div>
</center>
	    
        
         <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
             <ContentTemplate>
    	<br />
        <asp:Label ID="lblMensajePas" runat="server" ForeColor="Red"></asp:Label>
             <iframe id="MyIframe2" runat="server" style="display:none;" ></iframe>
    
                 <div class="footer" >
        
                 <asp:CheckBox ID="cb1" runat="server" 
                     Text="Sí, estoy conforme con todos los términos y condiciones." 
                     AutoPostBack="True" oncheckedchanged="cb1_CheckedChanged"/>
           <asp:Button runat="server" ID="btnAceptarPassword" Text="Aceptar" Enabled="False"
            onclick="btnAceptarPassword_Click" ValidationGroup="CambiarPassword" CssClass="btn btn-outline-success"/>
	    &nbsp;&nbsp;
        <asp:Button ID="btnCerrarPassword" runat="server" Text="Rechazar" Style="display:none"  CssClass="btn btn-outline-success"/>
                 &nbsp;
                 <asp:Button ID="Cerrar" runat="server"  onclick="Cerrar_Click"  CssClass="btn btn-outline-success"
                     Text="Cerrar" Width="62px" />
                      </div>
             </ContentTemplate>
             <Triggers>
                 <%--   <asp:PostBackTrigger  ControlID="btnAceptarPassword" />
                 --%>  
                 <asp:AsyncPostBackTrigger  ControlID="btnAceptarPassword" EventName="Click" />

                </Triggers>
         </asp:UpdatePanel>
	        
        
	</asp:Panel>

    
       
    <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
             <ContentTemplate>
	<asp:Button ID="btnShow7" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpePasswordChange" runat="server" PopupControlID="PanelBuscar"
         TargetControlID="btnShow7"   BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>

    <asp:Panel ID="PanelBuscar" runat="server" CssClass="modalPopup" Style="display: none">
    
        <div class="header" >
           Cambiar Password
        </div>
        <div class="body">
        
            <br />
                <div class = "row">
                    <div class = "col-lg-11 col-md-11 col-sm-11 col-xs-11">
                  <asp:Label ID="Label30" class="control-label" runat="server" Text="Correo"></asp:Label>
                     <asp:TextBox runat="server" ID="txtOlvide" ValidationGroup="vgOlvide" 
                     CssClass="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOlvide" ID="valOlvide"
                  ErrorMessage="Campo Obligatorio" Display="Dynamic" ValidationGroup="vgOlvide" ForeColor="Red">
                </asp:RequiredFieldValidator>
                              
             
                        </div>
                    </div>
             <div class = "row">
                    <div class = "col-lg-11 col-md-11 col-sm-11 col-xs-11">
                  <asp:Label ID="Label2" class="control-label" runat="server" Text="RFC"></asp:Label>
                    <asp:TextBox runat="server" ID="txtRfcOlvide" CssClass="form-control" />
                      <asp:RequiredFieldValidator runat="server" ID="valRfc" ControlToValidate="txtRfcOlvide" 
                          ErrorMessage="Campo Obligatorio" Display="Dynamic" ValidationGroup="vgOlvide" ForeColor="Red">

                      </asp:RequiredFieldValidator>
              
               </div>

                 </div>
            
            
        </div>
        <div class="footer" >
                   

    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
             <ContentTemplate>
     <div class = "row">
                    <div class = "col-lg-11 col-md-11 col-sm-11 col-xs-11">
                             <asp:Label runat="server" ID="lblMensajePass" Visible="False" ForeColor="Red"></asp:Label>
               
            </div>
                 </div>
          
                 <br />
         <asp:HiddenField ID="HiddenField6" runat="server" />
            <asp:LinkButton ID="Enviar"  Text="Enviar" CssClass="btn btn-outline-success" ValidationGroup="vgOlvide" OnClick="btnEnviarPass_Click"  runat="server" >
                           
                                </asp:LinkButton>
               <%--<asp:Button runat="server" ID="btnEnviarPass" Text="Enviar" ValidationGroup="vgOlvide"
            onclick="btnEnviarPass_Click" class="btn btn-outline-success"/>--%>
             <asp:Button ID="btnNo7" runat="server" Text="Cancelar" OnClick="btnNo7_Click" CssClass="btn btn-outline-success" />
     </ContentTemplate>
             <Triggers>
                 <%--   <asp:PostBackTrigger  ControlID="Enviar" />
                 --%>
                   <asp:AsyncPostBackTrigger  ControlID="Enviar" EventName="Click" />
                 </Triggers>
         </asp:UpdatePanel>   

                 
        </div>
                 
	      
    </asp:Panel>
                 </ContentTemplate>
        </asp:UpdatePanel>
                 
                 
    <%-- <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Always" >
             <ContentTemplate>--%>
	
	<asp:Button runat="server" ID="Button4" style="display: none;"/>
      <asp:ModalPopupExtender runat="server" ID="mpeTermino" TargetControlID="Button4" 
        BackgroundCssClass="modalBackground"
	 CancelControlID="btnCerrarPassword" PopupControlID="pnlTermino" />
	<asp:Panel runat="server" ID="pnlTermino" style="text-align: center;" CssClass="modalPopup" Width="800px" BackColor="White">
		<div class="header"> Términos y Condiciones</div>
        <br />
        <center>
        <div>
<asp:Panel ID="Panel3" 
           runat="server" 
           BorderColor="" 
           BorderStyle="Solid" 
           BorderWidth="1px" 
           Height="150px" 
           ScrollBars="Auto" 
           Width="80%" 
           BackColor="" 
           Font-Names="Avenir" 
           HorizontalAlign="Center" style="text-align: justify; font-size: x-small;" 
                Font-Size="XX-Small">
    <span class="style1"></span>
    USTED ACEPTA QUE ESTAS CONDICIONES DE USO ENTRARÁN EN VIGOR
PARA TODOS LOS USUARIOS EL 1 DE NOVIEMBRE DE 2020, APLICABLE A
TODAS LAS CUENTAS DE USUARIOS.
Le damos la bienvenida a NT Link.
El presente acuerdo establece los términos y condiciones de uso aceptable de los servicios
de NT Link y establecen un contrato entre usted y NT Link Comunicaciones S.A. de C.V.
(NT Link). El uso de los Servicios de NT Link implica que usted acepta todos los términos y
condiciones contenidos en este acuerdo, incluidas la Política de Privacidad, y el Acuerdo de
Niveles de Servicio.
Nos reservamos el derecho de modificar este Acuerdo en cualquier momento mediante la
publicación de una versión revisada en nuestra página web, la cual entrará en vigor al
momento de su publicación. Si la versión modificada incluye un Cambio Sustancial, se
informará con al menos 30 días de anticipación mediante la publicación de un aviso en
nuestro sitio web.
El presente es un documento importante que usted debe leer cuidadosamente antes
de decidir utilizar los Servicios de NT Link Comunicaciones S.A. de C.V.
NT Link Comunicaciones S.A. de C.V. puede cerrar, suspender o restringir el acceso
a su cuenta o a los servicios proporcionados si infringe cualquiera de los términos
y/o políticas de este acuerdo o cualquier otro acuerdo que haya usted celebrado con
NT Link Comunicaciones S.A. de C.V.
Usted es el único responsable de comprender y dar cumplimiento a todas y cada una
de las leyes, normas y regulaciones que se le puedan aplicar en relación con el uso
que haga de los Servicios de NT Link Comunicaciones S.A. de C.V.
Este Acuerdo no constituye una solicitud de los Servicios de NT Link.
1. Generales
1.1 Acerca de NT Link Comunicaciones S.A. de C.V. NT Link es una empresa
mexicana dedicada a proporcionar servicios de T.I. (Tecnologías de la Información).
Es proveedor autorizado de certificación y emisión de certificados digitales
(PACCFDI) autorizado por el Servicio de Administración Tributaria (SAT) con
número de autorización 57202 con fecha 27 de Julio de 2012. NT Link es un
proveedor de servicios de emisión y timbrado de certificados digitales y actúa como
tal creando, hospedando, manteniendo y proporcionándole nuestros servicios a
través de Internet.
1.2 Legislación Aplicable. NT link Comunicaciones S.A. de C.V. se rige por la
legislación Mexicana vigente y tiene como marco legal:
• Constitución Política de los Estados Unidos Mexicanos
• Código Civil Federal
• Código Penal Federal
• Código Civil de la Ciudad de México
• Ley Federal de Protección de Datos Personales en Posesión de los
Particulares
• Reglamento de la Ley Federal de Protección de Datos Personales en
Posesión de los Particulares
• Código de Comercio
• Ley Federal de Derecho de Autor
• Ley Federal de Propiedad Industrial.
Para la resolución de controversias legales estas se someterán expresamente a la
jurisdicción y competencia de los tribunales de la ciudad de México.
2. Servicios
Vínculos a sitios de terceros.
Si se le presenta un vínculo a un sitio web de un tercero mientras navega en el portal de NT
Link, (tanto si dicho vínculo es proporcionado por NT Link como si está integrado en el sitio
web), usted reconoce que estos vínculos solo se proporcionan para fines de referencia y
comodidad, que los sitios vinculados no están bajo el control de NT Link Comunicaciones
S.A. de C.V. y por tanto no es responsable de los contenidos de ningún vínculo o sitio
vinculado, o cualquier cambio o actualización de éstos.
2.1 Servicios de Emisión y timbrado de CFDI. Nuestros servicios le permiten generar,
enviar y consultar certificados fiscales digitales. NT Link no es un despacho fiscal ni
contable, tampoco es una extensión del Servicio de Administración Tributaria (SAT).
No tenemos ningún control sobre trámites realizados ante la autoridad por usted, ni
podemos actuar como intermediarios ante la misma.
2.2 Carga de sello digital. Su sello digital (CSD) y llave privada son confidenciales,
usted es responsable del uso y manejo de los mismos. Usted debe cargar el sello
dentro del portal de NT Link. NT Link y su personal podrá orientarlo sobre los pasos
a seguir para su registro dentro del portal de servicios.
2.3 Soporte Técnico
Este Acuerdo de Servicio (“Acuerdo de Servicio”) se aplica a los Servicios de
Soporte Técnico (que se definen a continuación) y se celebra entre el cliente que
utiliza los Servicios de Soporte Técnico (“usted” o “su/sus”) y NT Link
Comunicaciones S.A. de C.V. (NTLink) (“nosotros” /“nuestro/nuestra”
/“nuestros/nuestras”). Se le solicita leer atentamente este acuerdo de servicio, ya
que el uso de los mismos implica la aceptación de este acuerdo. El uso que haga de
los Servicios de soporte técnico y/o de cualesquiera de los productos o servicios
proporcionados por NT Link, están sujetos a los términos de uso, declaración de
privacidad, acuerdo de nivel de servicio, aviso de privacidad, uso adecuado de los
recursos, así como cualquier otra política asociada a NT Link.
Los servicios de soporte técnico le conectan con nuestros ingenieros de soporte
técnico para ayudarle con un conjunto de tareas relacionados a la solución del
incidente que se presenta, a través de los siguientes medios:
Vía whatsapp a los siguientes números:
• 554780-0200-Atención a clientes
• 80046-72574-Información y ventas
• 559107-8187-Ventas
• 558250-7656-Soporte Técnico
• 558250-7649-Soporte Técnico
• 556272-5550-Soporte Técnico
• 552405-8190-Soporte Técnico
• 562104-6810-Soporte Técnico
• 554801-7921-Soporte Técnico
Vía Skype a las siguientes cuentas:
Ventas/Atención a clientes
• ntlink_comunicaciones1
• news_1580
Soporte
• ntlink_comunicaciones2
• ntlink_comunicaciones3
• ntlink_comunicaciones4
• ntlinksoporte
Vía telefónica a los siguientes números:
• 554780-0200-Atención a clientes
• 80046-72574-Información y ventas
• 559107-8187-Ventas
• 558250-7656-Soporte Técnico
• 558250-7649-Soporte Técnico
• 556272-5550-Soporte Técnico
• 552405-8190-Soporte Técnico
• 562104-6810-Soporte Técnico
• 554801-7921-Soporte Técnico
Vía correo electrónico a las siguientes cuentas de correo:
• Atención a clientes/ventas
informes@ntlink.com.mx
atnclientes@ntlink.com.mx
jessica.ambros@ntlink.com.mx
Ivonne.ahuatzi@ntlink.com.mx
• Soporte Técnico
soporte@ntlink.com.mx
soporte3@ntlink.com.mx
soporte33@ntlink.com.mx
daniel.lopez@ntlink.com.mx
informes@ntlink.com.mx
La utilización de nuestros servicios de soporte técnico implica la autorización de los
siguientes enunciados:
1.- Consentimiento para servicios remotos o con conexión de datos. El
software que use para hacer uso de los servicios de soporte técnico puede
conectarse a través de terceros, a través de una conexión de datos (p. ej.,
Internet u operador inalámbrico), en los cuales no recibirá una notificación de uso.
    Al utilizar los Servicios de soporte técnico, otorga su consentimiento
para la transmisión de información a través de los servicios de soporte
técnico.
2.- Uso indebido de servicios remotos o con conexión de datos. Ni usted,
ni cualquier usuario quien haya solicitado el servicio de soporte podrá utilizar
dichos servicios de ninguna forma que pueda causar daños a NT Link o a
cualquier usuario, red o sistema informático, así como obstaculizar el uso de
los mismos a cualquier otra persona que haga uso de los mismos. No podrá
utilizar los Servicios de soporte técnico para intentar acceder sin autorización
a cualquier servicio, dato, cuenta o red, sean cuales fueren los métodos
3.- Cooperación y capacidad de soporte. La capacidad de proporcionar los
servicios de soporte técnico depende de su cooperación total y oportuna, así
como de la exactitud e integridad de cualquier información que proporcione.
Antes de que NTLink pueda proporcionar el servicio, debe contar con un
dispositivo con capacidad de acceso a internet y acceso a los sistemas y/o
aplicaciones de NT Link, con licencia válida y que cumpla(n) con los requisitos
mínimos aplicables de capacidad de soporte.
4.- Acceso remoto. Para proporcionar los Servicios de Soporte Técnico, es
posible que los ingenieros de soporte de NT Link deban conectarse a su
dispositivo de forma remota, lo que nos permite controlarlo, ver su pantalla, y
en caso de ser necesario y bajo su consentimiento instalar software y/o
cambiar la configuración de su dispositivo. Puede que se le pida que
descargue o acepte los términos de licencia de software de terceros para
establecer la conexión remota. Usted es responsable de los cobros por
descargas que pudieran aplicarse y de pagar los precios que cobre(n) su(s)
proveedor(es) de conexión de datos (p. ej., a través de Internet, Wi-Fi o el
operador inalámbrico). Usted debe aceptar los siguientes pasos con el fin de
que le proporcionemos los servicios de soporte técnico. Si no somos capaces
de establecer correctamente una conexión de acceso remoto a su dispositivo,
es posible que no podamos brindar los Servicios de Soporte Técnico.
5.- Ingenieros de soporte. Nuestros ingenieros de soporte si bien dan acceso
a respuestas y soluciones a incidentes no son portavoces de NT Link
Comunicaciones S.A. de C.V., por lo que sus puntos de vista no
necesariamente reflejan o representan los de la empresa, sus socios y/o sus
ejecutivos. Siempre tenga precaución al entregar cualquier información de
identificación personal acerca de usted o de los miembros de su familia al
interactuar con nuestros técnicos de soporte. Usted es el único responsable
de sus interacciones con cualesquiera de nuestros ingenieros de soporte.
6.- Copia de seguridad de datos. Usted comprende que los datos se pueden
perder, dañar o degradar, y acepta que es totalmente responsable de la copia
de seguridad de cualquiera y todos los datos, software, información u otros
archivos almacenados en su dispositivo, incluidos todos los discos y unidades,
u otros dispositivos asociados (en conjunto, “Sus Datos”) antes de recibir los
Servicios de Soporte Técnico. Usted entiende y acepta, además, que NT Link
podría tener que transmitir sus datos incluida la información confidencial de su
propiedad y personal almacenada en nuestros archivos a cualquier autoridad
oficial que así lo requiriera previa solicitud y/o notificación oficial. NT Link no
comparte información con terceros, ni con proveedores de servicios para
brindar soporte técnico. Todas estas transmisiones se realizarán de acuerdo
con nuestra Declaración de privacidad.
2.4 Requisitos y manejo de servicios Para solicitar y mantener una cuenta de
servicios con NT Link, debe proporcionar información correcta y actualizada, deberá
cumplir con los siguientes apartados:
a. Deberá enviar a NT Link, el comprobante de pago realizado de acuerdo al
tipo de servicio contratado, indicando el RFC y/o nombre a quien le será
acreditado el pago, así como el servicio adquirido (Emisión de CFDI y/o
Nómina). La omisión de esta información puede retrasar el abono de este
sin que sea responsabilidad por parte de NT Link.
b. Deberá estar inscrito ante el Servicio de Administración Tributario (SAT),
contar con su Firma Electrónica (FIEL) y Certificado de Sello Digital (CSD)
vigente.
c. La información de contacto es su responsabilidad. Debe mantener
actualizado su correo electrónico principal, para que NT Link pueda
comunicarse con usted de manera electrónica. Usted reconoce y acepta
que si NT Link le envía comunicación electrónica y usted no la recibe
debido a que su dirección principal de correo electrónico registrada es
incorrecta, está desactualizada, bloqueada por su proveedor de servicio o
no es apta de cualquier otra forma para recibir comunicación electrónica,
se considerará que NT Link le ha enviado la información y ésta será
considerada satisfactoriamente realizada. Tenga en cuenta que si utiliza un
filtro de correo no deseado que bloquea o desvía los correos electrónicos
de los remitentes que no aparecen en su libreta de contactos o direcciones
de correo válidos, deberá agregar a NT Link a sus contactos para que
pueda ver las comunicaciones que le enviamos.
d. Puede actualizar su correo electrónico o domicilio principal en cualquier
momento desde el sitio web de NT Link
(https://cfdi33.ntlink.com.mx/Facturacion3.3/wfrLogin.aspx), sin embargo
recuerde que el correo electrónico con el cual se registró es su usuario de
acceso. Si su correo ya no es válido y desea cambiar su usuario deberá
solicitar a NT Link el cambio del mismo, cumpliendo con los requisitos para
dicho trámite.
c. Verificación de identidad. Usted autoriza a NT Link, directamente o a través
de terceros, a realizar todas las consultas que consideremos necesarias
para validar su identidad. Dentro de estas consultas se incluye solicitarle
más Información o documentación, requerirle que proporcione su número
de registro federal de contribuyentes o clave única de registro de población
(CURP), requerirle que realice algunos pasos para confirmar la titularidad
de su correo electrónico, o consultar su identidad con bases de datos
oficiales.
d. Si usted deja de utilizar su cuenta por un período mayor o igual a tres (3)
meses, ésta será bloqueada por inactividad y permanecerá así hasta por
un (1) año. Pasado el año será cancelada, su información permanecerá en
archivos históricos por un plazo de tres (3) años. Para reactivar su cuenta
será necesario el pago de reactivación.
2.5 Propietario de la cuenta. Usted solo podrá emitir facturas desde su cuenta y en su
propio nombre o en su capacidad de representante legal de una compañía (en el
caso de que el usuario sea una entidad legal). En el caso de que el usuario sea una
entidad legal, el usuario con acceso y quien controla la cuenta tendrá la autoridad
para delegar en su totalidad o parcial, su autoridad a personas secundarias que 
tienen acceso a la cuenta del usuario; en el entendido de que el usuario (entidad
legal) será responsable de cualquier acción u omisión por parte de las personas que
controlan la cuenta, de conformidad con las condiciones de este apartado.
3. Folios y/o Timbres disponibles en la Cuenta.
3.1 Cada vez que usted adquiere un paquete de CFDI´s, éstos son agregados a su
cuenta, sumando su adquisición al saldo actual.
3.2 Si usted deja de utilizar el servicio por un período mayor o igual a tres (3) meses, su
cuenta quedará “suspendida” por inactividad, para reactivarla será necesario el pago
de reactivación. Si contaba con folios y/o timbres estos estarán disponibles una vez
reactivada la cuenta. Si adquirió un nuevo paquete el saldo anterior será adicionado.
3.3 Los folios y/o timbres, así como las licencias de uso de software propiedad de NT
Link Comunicaciones S.A. de C.V. son PERSONALES e INTRANSFERIBLES. Si
usted adquirió alguno de nuestros productos, está consciente que cuenta con una
licencia de uso, la cual no le da propiedad ni derechos de transferencia o
enajenación de esta.
3.4 Usted podrá solicitar un reembolso en caso de no querer utilizar nuestros servicios
bajo las siguientes condiciones:
a) Si realizó una transferencia errónea a nuestra cuenta, deberá solicitar por
escrito la devolución. El reembolso se realizará en los siguientes 30 días a
su solicitud.
b) En caso de no querer continuar con los servicios, deberá solicitar el
reembolso por escrito indicando los motivos por los cuales desea cancelar
el servicio en un plazo no mayor a catorce (14) días calendario. El reembolso
se realizará en los siguientes 30 días a su solicitud y se realizará únicamente
por el valor del producto y/o servicio adquirido.
4. Pago, facturación, reembolso
4.1 Información de pagos y cuenta. Para adquirir un paquete de facturas y/o alguno
de nuestros productos debe enviar su notificación de pago a su ejecutivo de ventas
o bien al correo informes@ntlink.com.mx. Para el caso de pago en línea con tarjeta
de crédito o débito o bien para depósito con algún intermediario de pagos, será
direccionado al portal del prestador de dicho servicio, NT Link Comunicaciones S.A.
de C.V. no es el responsable de gestionar dicho pago. No somos responsables de
los cobros del emisor de su tarjeta o del banco, así como tarifas adicionales y/o
comisiones como resultado del procesamiento de su pago con tarjeta de
crédito/débito, o pagos a través de intermediarios de pagos. Usted revisar su saldo
de CFDI´s disponibles en el portal de facturación en la siguiente dirección URL
https://cfdi33.ntlink.com.mx/Facturacion3.3/wfrLogin.aspx.Usted acepta mantener
actualizada la información de su cuenta de facturación y de contacto.
4.2 Información de facturación. Al proporcionar a NT Link Comunicaciones S.A de
C.V. la información de pago, usted:
(i) manifiesta que está autorizado a utilizar el método de pago,
(ii) manifiesta que toda la información de pago es exacta, y
(iii) autoriza a NT Link Comunicaciones S.A. de C.V. a cobrarle por el producto y/o
servicios solicitados mediante su método de pago seleccionado.
Podemos facturarle:
(a) por anticipado,
(b) en el momento de la adquisición,
(c) poco después de la adquisición.
4.3 Historial de pagos y errores. Es su responsabilidad revisar su historial de pagos y
notificarnos en caso de errores o cargos no autorizados. Debe ponerse en contacto con
nosotros en un periodo máximo de ciento veinte (120) días desde que el error aparezca
por primera vez en su factura. Entonces, investigaremos el error oportunamente. Si no
lo indica en ese período, nos libera de toda responsabilidad y reclamación por pérdidas
que resulten del error y no tendremos obligación de corregirlo o proporcionar un
reembolso. Si NT Link identifica un error de facturación, lo corregiremos en un plazo
máximo de treinta (30) días.
4.4 Reembolsos. Puede solicitar el reembolso a la compra realizada en un periodo
máximo de catorce (14) días calendario desde la fecha de compra o renovación (si
corresponde). Le reembolsaremos el importe total pagado en un periodo de treinta (30)
días calendario desde la fecha de cancelación. Si su compra la realizó a través del portal
de compras en línea con cargo a su tarjeta de débito o crédito o bien a través de cualquier
intermediario de cobro, el reembolso será únicamente por la cantidad que corresponde
al valor del producto o servicio de NT Link. Los cargos por procesamiento y/o comisiones
son responsabilidad del intermediario de pago y no de NT Link Comunicaciones S.A. de
C.V.
5. Cancelación de su Cuenta.
5.1 Cómo cerrar su Cuenta. Usted puede cancelar su cuenta en un plazo de catorce (14)
días calendario. momento. Simplemente envíe su solicitud al correo
informes@ntlink.com.mx solicitando la cancelación. Deberá incluir información que verifique
que usted es el titular de la cuenta. 
5.2 Restricciones del Cierre de la Cuenta. Usted no puede evadir ninguna investigación
mediante la cancelación de su cuenta. Usted seguirá siendo responsable de todas las
obligaciones relacionadas con ella incluso después de la cancelación de la misma.
6. Errores y Operaciones No Autorizadas.
6.1 Protección para operaciones no autorizadas y errores. Cuando ocurre una
operación no autorizada o un error en su cuenta, NT Link cubrirá el total de los timbres o
folios no autorizados y/o errores, siempre y cuando reúnan los requisitos aplicables y se
sigan los procedimientos que se describen a continuación.
Una operación no autorizada es la emisión de un CFDI que usted no haya realizado y se
demuestre que fue ocasionada por una falla de sistema o existen elementos sustentables
que demuestren que su cuenta fue vulnerada y se hizo mal uso de la misma.
Si usted otorga a un tercero acceso a su cuenta (dándole la Información para iniciar sesión)
y realiza operaciones sin su conocimiento o permiso, usted será el responsable de dicho
uso. Se produce un fallo cuando hay un error en el perfil de su cuenta, en el historial o en la
confirmación del sellado que le enviamos por correo electrónico.
6.2 Requisitos de Notificación.
a. Debe notificar de inmediato a NT Link si cree que:
• ha habido una operación no autorizada o acceso no autorizado a su cuenta;
• existe un error en su relación de CFDI emitidos (usted puede acceder a su
relación en la sección de reportes) o en la confirmación de la transacción que
se le envió por correo electrónico;
• su contraseña o su clave de usuario se han visto comprometidas;
• necesita más Información acerca de una operación que aparece en reporte de
CFDI´s emitidos.
b. Para reunir los requisitos para la protección por operaciones no autorizadas, nos lo
debe notificar en el plazo de treinta (30) días posteriores a la primera operación no
autorizada del historial de su cuenta. Nosotros extenderemos el período de tiempo
a 60 días si por algún motivo justificado y acreditable, usted no pudo notificarnos en
el plazo establecido. Debe revisar su relación de CFDI´s regularmente en su cuenta
para asegurarse de que no haya operaciones no autorizadas o errores. También
debe comprobar las confirmaciones de estas operaciones para asegurarse de que
cada una haya sido autorizada y sea correcta.
Para operaciones no autorizadas o errores en su cuenta, notifíquenos del siguiente modo:
• Envíe un correo electrónico a informes@ntlink.com.mx indicando el problema.
• Llame al Servicio de Atención al Cliente de NT Link a los teléfonos (55) 4780-0200,
(55) 5601-7570, 01-800-467-2574.
Cuando nos notifique, facilítenos toda la Información que se describe a continuación:
• Su nombre y correo electrónico registrado en su cuenta;
• Una descripción de la supuesta operación no autorizada o error y una explicación de
por qué cree que es incorrecto o de por qué necesita más Información para identificar
la transacción;
Si nos notifica de manera verbal, podemos solicitarle que nos envíe su queja o pregunta por
escrito en el plazo de 10 días hábiles. Durante el curso de la investigación, podemos
solicitarle Información adicional.
6.3 Medidas de NT Link una vez recibida su Notificación. Una vez que usted nos
notifique acerca de presuntas operaciones no autorizadas o errores, o si nos enteramos de
ellos de alguna otra forma, seguimos el siguiente procedimiento:
• Realizaremos una investigación para determinar si existe error o se realizó una
operación no autorizada.
• Cambiaremos su contraseña de acceso a la cuenta como medida de seguridad.
• Realizaremos la investigación en un plazo de 10 días hábiles a partir de la fecha en
que recibimos su notificación de operación no autorizada o error. Si su cuenta es
nueva (la primera transacción en su cuenta se hizo antes 30 días hábiles a partir de
la fecha en que nos notificó), entonces podríamos tardar hasta 20 días hábiles en
concluir la investigación. Si necesitamos más tiempo, podríamos tardar hasta 45 días
en concluir la investigación.
• Si determinamos que necesitamos más tiempo para concluir la investigación,
abonaremos provisionalmente en su cuenta el número de folios y/o timbres que
amparen la o las operaciones no autorizadas o error sospechoso. Recibirá el abono
provisional de manera inmediata a la fecha en que recibimos su aviso, así tendrá la
posibilidad de continuar operando hasta que concluya la investigación.
• Le informaremos de nuestra decisión en un lapso de 3 Días Hábiles a partir de haber
concluido la investigación.
• Si determinamos que hubo una operación no autorizada o error, abonaremos
rápidamente el importe total en su cuenta en un lapso de 1 día hábil a partir de nuestra
determinación. O si ya recibió un abono provisional, podrá quedarse con dicho
importe.
• Si determinamos que no hubo una operación no autorizada o error, incluiremos una
explicación acerca de nuestra decisión en el correo electrónico que le enviemos. Si
recibió un abono provisional, lo quitaremos de su cuenta. Puede solicitar copias de
los documentos que utilizamos en la investigación.
6.4 Errores de NT Link. Nosotros rectificaremos cualquier error que descubramos. Si el
error provoca que reciba un importe inferior al que le corresponde, NT Link abonará en su
cuenta la diferencia. Si el error provoca que reciba un importe mayor del que le corresponde,
NT Link puede quitar los timbres y/o folios adicionales de su cuenta.
6.5 Sus Errores. Si usted envía un pago por un importe incorrecto (por ejemplo, debido a
un error tipográfico), su única alternativa será ajustar el número de timbres y/o folios de
acuerdo al importe pagado. NT Link no reembolsará ni cancelará los pagos que haya
realizado por montos erróneos. Podrá solicitar un reembolso cuando haya hecho una
transferencia a NT Link por error.
7. Actividades Restringidas.
7.1 Actividades Restringidas. Durante la vigencia de la relación comercial que usted tenga
con NT Link Comunicaciones a través de nuestro sitio web, nuestros productos y/o servicios,
usted no deberá:
a. Incumplir con este este acuerdo, ni con ninguna de las políticas de uso de NT Link;
b. Infringir cualquier ley, estatuto, ordenanza o reglamento;
c. Infringir los derechos de autor, patente, marca comercial, secreto comercial u otros
derechos de propiedad intelectual de NT Link o de cualquier otro tercero o los
derechos de publicidad o privacidad;
d. Vender artículos falsificados;
e. Actuar de una manera que sea difamatoria, denigrante, amenazante u hostil con
nuestros empleados, agentes u otros usuarios;
f. Proporcionar Información falsa, inexacta o engañosa;
g. Involucrarse en actividades y/o transacciones potencialmente fraudulentas o
sospechosas;
h. Negarse a cooperar en una investigación o a proporcionar confirmación de su
identidad o cualquier otra Información que usted nos proporcione;
i. Controlar una cuenta que está asociada a otra que se haya visto involucrada en
cualquiera de estas actividades restringidas;
j. Conducir su empresa o utilizar los servicios NT Link de manera tal que tenga o pueda
tener como resultado quejas, controversias, reclamaciones, cancelaciones, contra
cargos, comisiones, multas, penalizaciones y otras responsabilidades ante NT Link,
otros usuarios, terceros o usted;
k. Revelar o distribuir Información de otros usuarios a terceros o utilizar la Información
para fines de marketing, a menos que reciba el consentimiento expreso del usuario
para hacerlo;
l. Enviar correos electrónicos no solicitados a usuarios, ni utilizar los servicios NT Link
para cobrar cantidad alguna por enviar, o ayudar a enviar correos electrónicos no
solicitados a terceros;
m. Adoptar medidas que impongan una carga transaccional no razonable o
desproporcionadamente grande en los servicios de NT Link o en nuestro sitio web,
software, sistemas (incluida cualquier red y servidor que utilice para proporcionar
cualquiera de los servicios de NT Link) operados por nosotros o en nuestro nombre
(ataques DDoS);
n. Facilitar la difusión de virus, caballos de troya, malware, gusanos u otras rutinas de
programación informática que intenten o puedan dañar, interrumpir, corromper,
maltratar o interferir negativamente, interceptar o expropiar u obtener acceso no
autorizado a cualquier sistema, datos, información o servicios de NT Link;
o. Utilizar un proxy anónimo; utilizar robots, arañas ni otros dispositivos automáticos o
procesos manuales para controlar o copiar nuestros sitios web sin nuestro
consentimiento previo por escrito;
p. Uso de cualquier dispositivo, software o rutina para infringir las restricciones de
nuestros encabezados de exclusión de robots o para interferir o interrumpir o intentar
interferir con nuestro sitio web, software, sistemas (incluida cualquier red y servidores
que se utilicen para proporcionar cualquiera de los servicios de NT Link) operados
por nosotros o en nuestro nombre, cualquiera de los servicios de NT Link o con el
uso de otro usuario de cualquiera de los servicios de NT Link;
q. Adoptar medidas que pueden provocar que perdamos cualquiera de los servicios de
nuestros proveedores de servicios de Internet, procesadores de pago u otros
proveedores o proveedores de servicios; o
r. Abuso (como usuario pagador o como usuario receptor) de cualquiera de nuestros
servicios de soporte, capacitación, atención a clientes, administración y/o desarrollo.
8. Su Responsabilidad - Medidas que Nosotros Podemos Adoptar.
8.1 Su responsabilidad.
a. General. Usted es responsable de todas las cancelaciones, devoluciones de cargo,
reclamaciones, comisiones, multas, penalizaciones y otras responsabilidades en las
que hayan podido incurrir NT Link, un usuario de NT Link o un tercero, provocadas u
originadas del incumplimiento de este acuerdo y/o del mal uso en la utilización de los
productos o servicios NT Link. Acepta reembolsar a NT Link, a un usuario de NT Link
o tercero por cualquiera y cada una de dichas responsabilidades.
b. Responsabilidad por las Instrucciones dadas por usted en su cuenta. NT Link
se basará en cualquier instrucción que usted haya dado a su cuenta (ya sea de forma
verbal o por escrito) una vez que se haya autenticado. NT Link no será responsable
de pérdidas o daños que usted o cualquier otra persona pueda sufrir cuando NT Link
actúe de buena fe de conformidad con dichas instrucciones, a menos que se
demuestre negligencia por parte de NT Link.
8.2 Reembolso por su responsabilidad. En caso de que usted sea responsable por
importes adeudados, NT Link cancelará el acceso a todos los servicios que tenga
contratados, hasta que cubra el adeudo.
8.3 Medidas de NT Link: actividades restringidas. Si NT Link, a su entera discreción, cree
que usted se ha visto involucrado en actividades restringidas, podemos adoptar varias
medidas para proteger a NT Link Comunicaciones S.A. de C.V., sus miembros, otros
terceros o usted, contra cancelaciones, devoluciones de cargo, reclamaciones, comisiones,
multas, penalizaciones y cualquier otra responsabilidad. Entre las medidas que podemos
adoptar se incluyen, sin limitarse a:
a. Cancelar, suspender o limitar el acceso a su cuenta y/o a los servicios NT Link;
b. Negarnos a proporcionarle los servicios de NT Link ahora y en el futuro;
c. Limitar su acceso a nuestro sitio web, software, sistemas (incluida cualquier red y
servidores que se utilizan para proporcionar cualquiera de los servicios de NT Link)
operados por nosotros o en nuestro nombre; o
d. Retener su acceso e información por un período de tiempo razonablemente
necesario para protegernos contra el riesgo de responsabilidad ante NT Link o un
tercero o si creemos que puede estar involucrado en actividades o transacciones
potencialmente sospechosas o fraudulentas.
8.4 Medidas de NT Link, Cierre de la Cuenta, cancelación del servicio, acceso
restringido a la Cuenta; criterios confidenciales. NT Link se reserva, a su entera
discreción, el derecho de suspender o dar por terminado este acuerdo o acceso o uso de
su sitio web, software, sistemas (incluida cualquier red y servidores que se utilizan para
proporcionar cualquiera de los servicios de NT Link) operados por nosotros o en nuestro
nombre, o parte o la totalidad de los servicios de NT Link por cualquier motivo y en cualquier
momento tras previo aviso; lo anterior sin responsabilidad para NT Link o la necesidad de
resolución judicial previa. Si limitamos el acceso a su cuenta, le daremos aviso de nuestras
medidas y la oportunidad para solicitar el restablecimiento del acceso si, a nuestra entera
discreción, lo estimamos adecuado. Además, reconoce que la decisión de NT Link de
adoptar ciertas medidas, incluidas limitar el acceso a su cuenta, colocar retenciones o
imponer reservas, pueda ser en función de criterios confidenciales esenciales para nuestra
gestión del riesgo, la seguridad de las cuentas de los usuarios, el sistema NT Link o los
proveedores de servicios de NT Link. Acepta que NT Link no tiene obligación de revelarle
los detalles del manejo del riesgo o de sus procedimientos de seguridad.
8.5 Transgresiones de la Política de uso aceptable. Si usted infringe la Política de Uso
Aceptable, además de las medidas antes mencionadas, usted será responsable ante NT
Link del importe de los daños provocados a NT Link por cada infracción a sus políticas.
Usted acepta las sanciones que pudieran ser aplicables dictaminadas por la autoridad
competente por transgredir a las mismas tomando en cuenta los daños reales aunque estos
sean difícil o imposibles de calcular ocasionados a NT Link. NT Link puede presentar
cálculos y montos adicionales.
8.6 Cumplimiento con las Leyes de Protección de Datos Personales en Posesión de
los Particulares. NT LINK COMUNICACIONES S.A. de C.V., mejor conocido como NT
LINK, es el responsable del uso y protección de sus datos personales. Los datos personales
que recabamos de usted, los utilizamos para el alta, registro y procesamiento de CFDI.
Usted tiene derecho a conocer qué datos personales tenemos de usted, para qué los
utilizamos y las condiciones del uso que les damos (Acceso). Asimismo, es su derecho
solicitar la corrección de su información personal en caso de que esté desactualizada, sea
inexacta o incompleta (Rectificación); que la eliminemos de nuestros registros o bases de
datos cuando considere que la misma no está siendo utilizada adecuadamente
(Cancelación); así como oponerse al uso de sus datos personales para fines específicos
(Oposición). Estos derechos se conocen como derechos ARCO.
Para el ejercicio de cualquiera de los derechos ARCO, usted deberá presentar la solicitud
respectiva a través del siguiente medio: correo electrónico: informes@ntlink.com.mx
8.7 En cumplimiento de las Leyes de Protección de Datos, cada una de las Partes debe,
sin limitación:
a. implementar y mantener en todo momento todas las medidas de seguridad
apropiadas en relación con el procesamiento de datos personales;
b. mantener un registro de todas las actividades de procesamiento llevadas a cabo en
virtud de estas Condiciones; y
c. no hacer o permitir deliberadamente que se haga algo que pueda llevar a que la
otra parte no cumpla las Leyes de Protección de Datos.
9. Controversias con NT Link.
9.1 Primero póngase en contacto con NT Link. Si surgiera una controversia entre Usted
y NT Link, nuestro objetivo es conocer y abordar sus problemas y, si no logramos hacerlo
de manera que Usted quede satisfecho, proporcionarle un medio neutral y eficiente para
resolver la controversia rápidamente. Las controversias entre Usted y NT Link en relación
con los servicios de NT Link pueden ser reportadas al servicio de atención a clientes en
cualquier momento o llamando al 554780-0200 desde las 8:00 a.m. hasta las 6:00 p.m..,
(hora de la Ciudad de México).
    9.2 Legislación Aplicable y Jurisdicción Las partes acuerdan que cualquier controversia
o reclamación que Usted pueda tener en contra de NT Link derivada de este acuerdo habrá
de ser resuelta por los tribunales competentes de la Ciudad de México; renunciando las
partes expresamente a cualquier otra jurisdicción que les pudiera corresponder por razón
de sus domicilios presentes o futuros, o por cualquier otro motivo. Este acuerdo será regido
por las leyes aplicables de los Estados Unidos Mexicanos.
9.3 Notificaciones a Usted. Usted acepta que NT Link puede enviarle comunicaciones
electrónicas con respecto a su cuenta, los servicios de NT Link y este acuerdo. NT Link se
reserva el derecho a cerrar su cuenta si retira su consentimiento para recibir comunicaciones
electrónicas. Se considerará que todas las comunicaciones electrónicas son recibidas por
usted dentro de las siguientes 24 horas desde el momento en que han sido publicadas en
nuestro sitio web o se las hayamos enviado por correo electrónico.
9.4 Procesos Judiciales de Insolvencia. Si Usted inicia o se inicia un proceso judicial en
su contra de conformidad con alguna disposición de una ley de quiebra o concurso
mercantil, NT Link tendrá derecho a recuperar todos los costos y gastos razonables
(incluidos los honorarios y gastos de abogado) en que se haya incurrido de conformidad con
la ejecución de este acuerdo.
9.5 Liberación de NT Link. Si Usted tiene una controversia con uno o más usuarios, Usted
libera y sacará en paz y a salvo a NT Link y sus filiales (sus funcionarios, directores, agentes,
empresas de participación conjuntas, empleados y proveedores) de cualquier reclamación,
demanda y daño (directo o indirecto) de cualquier tipo y naturaleza que pudieran derivarse
de dichas controversias o tengan cualquier relación con las mismas.
10. Términos Generales.
10.1 Limitaciones de responsabilidad. EN NINGÚN CASO NOSOTROS, NUESTRA
CASA MATRIZ, NUESTRAS SUBSIDIARIAS Y EMPRESAS FILIALES, NI NUESTROS
TRABAJADORES, DIRECTORES, AGENTES, EMPRESAS CONJUNTAS, EMPLEADOS
O PROVEEDORES, SEREMOS RESPONSABLES POR LA PÉRDIDA DE GANANCIAS O
POR CUALQUIER DAÑO ESPECIAL, DERIVADO O RESULTANTE (INCLUIDO, PERO NO
LIMITADO A, LOS DAÑOS POR PÉRDIDA DE DATOS O PÉRDIDA DE NEGOCIOS) QUE
SURJA DE O EN RELACIÓN CON NUESTRO SITIO WEB, EL SOFTWARE, LOS
SISTEMAS (INCLUIDA CUALQUIER RED Y SERVIDORES USADOS PARA BRINDAR
CUALQUIERA DE LOS SERVICIOS DE NT LINK) UTILIZADOS POR NOSOTROS O EN
REPRESENTACIÓN NUESTRA, LOS SERVICIOS DE NT LINK O ESTE ACUERDO
(CUALQUIERA QUE SEA SU ORIGEN, INCLUYENDO NEGLIGENCIA). A MENOS QUE Y
EN LA MEDIDA EN QUE ESTÉ PROHIBIDO POR LA LEY, NUESTRA RESPONSABILIDAD
Y LA RESPONSABILIDAD DE NUESTRA MATRIZ, NUESTRAS FILIALES Y
SUBSIDIARIAS, NUESTROS TRABAJADORES, DIRECTORES, AGENTES, EMPRESAS
CONJUNTAS, EMPLEADOS Y PROVEEDORES, ANTE USTED O CUALQUIER
TERCERO, EN CUALQUIER CIRCUNSTANCIA, SE LIMITA AL IMPORTE REAL DE LOS
DAÑOS DIRECTOS.
“Eventos que Escapan de Nuestro Control” se refiere a cualquier causa que escapa de
nuestro control razonable y nos impide proporcionar el Sitio web o cumplir con cualquiera
de nuestras otras obligaciones en virtud de este Acuerdo de Servicio. Entre estas causas
se incluyen incendio, inundación, tormenta, revuelta, disturbio civil, guerra, accidente
nuclear, actividad terrorista y eventos de fuerza mayor.
10.1 Indemnización. Usted acepta defender, indemnizar y exonerar a NT Link, sus filiales
y a nuestros funcionarios, directores, agentes, empresas de participación conjunta,
empleados proveedores de servicios y proveedores de cualquier responsabilidad ante
cualquier reclamación, demanda (incluidos los honorarios de abogados), multas o cualquier
otra responsabilidad en la que haya incurrido algún tercero que surja del incumplimiento de
usted (o el incumplimiento de sus empleados o agentes) de este acuerdo o del uso de los
servicios de NT Link.
10.2 Licencia NT Link a Usted. Si está utilizando software de NT Link, como una API, u
otra aplicación de software que haya descargado a su computadora, dispositivo u otra
plataforma, o a los que haya accedido a través de la web o una plataforma móvil, NT Link
le concede una licencia revocable, no exclusiva y no transferible, para acceder o utilizar el
software de NT Link de acuerdo con la documentación respectiva. Esta licencia incluye el
software y todas las actualizaciones, nuevas versiones y software de reemplazo solo para
su uso personal. Usted no podrá rentar, alquilar o transferir de otra manera sus derechos
en el software a un tercero. Debe cumplir con los requisitos de utilización, acceso e
implementación contenidos en toda la documentación de NT Link que acompaña los
servicios de NT Link. Si no cumple con los requisitos de implementación, de acceso y
utilización, será responsable de todos los daños que resulten y le afecten a usted, a NT Link
y/o terceros. NT Link puede haber integrado ciertos materiales y tecnología de terceros en
cualquier web u otra aplicación, incluidos su software, o puede acceder y utilizar ciertos
materiales y tecnología de terceros para facilitar los servicios de NT Link, sin embargo éstos
derechos no han sido transferidos de ninguna manera, Usted acepta no modificar, alterar,
reparar, copiar, reproducir, adaptar, distribuir, mostrar, publicar, aplicar ingeniería inversa,
traducir, descompilar, ni ningún otro intento de crear ningún código fuente que se derive del
software o de cualquier material o tecnología propiedad de NT Link o de terceros. Usted
reconoce que todos los derechos, títulos e intereses del software de NT Link son propiedad
de NT Link Comunicaciones S.A de C.V. y los materiales de terceros integrados en ellos
son propiedad de los proveedores de servicios externos. Cualquier aplicación de software
de terceros que utilice en el sitio web de NT Link estará sujeta a la licencia que acordó con
los terceros que le proporcionan este software. NT Link no posee, controla ni tiene ninguna
responsabilidad u obligación con respecto a ninguna aplicación de software de un tercero
que usted opte por utilizar en el sitio web.
10.3 Licencia de Comercios a NT Link. Sin perjuicio de las cláusulas anteriores, si usted
es un comercio o empresa que usa los servicios NT Link, mediante el presente acuerdo
usted nos concede un derecho (previa notificación) gratuito para usar y mostrar
públicamente, durante el periodo de vigencia de este acuerdo, sus marcas comerciales (de
forma enunciativa mas no limitativa), marcas registradas y no registradas, nombres
comerciales, marcas de servicio, logotipos, nombres de dominio y otras designaciones de
su propiedad, que se le hayan licenciado o que usted use con el fin de identificarlo como un
cliente que utiliza los servicios de NT Link.
10.4 Propiedad Intelectual. "ntlink.com.mx," “ntlink2.com.mx”, “NT Link”, “NTLink” y todas
las otras URL´s, logotipos y marcas relacionadas con los servicios o productos licenciados
de NT Link son marcas o nombres comerciales de NT Link Comunicaciones S.A. de C.V. o
de sus licenciantes. No podrá copiar, imitar o usarlas sin previo consentimiento escrito de
NT Link Comunicaciones S.A. de C.V.. Además, todos los encabezados de página, los
gráficos personalizados, los iconos de botón y las secuencias de comandos son marcas de
servicio, marcas comerciales y/o imagen comercial de NT Link. No podrá copiar, imitar o
usarlas sin nuestro previo consentimiento por escrito. No podrá alterar, modificar o cambiar
estos logotipos y/o nombres, ni mostrarlos de ninguna forma que implique patrocinio o
aprobación por parte de NT Link. Todos los derechos, títulos e intereses en el sitio web de
NT Link además de todo lo contenido en él, sus servicios, la tecnología relacionada
cualquiera sea, y contenido creado o derivado de lo anteriormente expuesto es propiedad
exclusiva de NT Link Comunicaciones S.A. de C.V. y sus licenciantes.
10.5 Forma de Contactarlo. A efecto de contactarlo de forma más eficiente, nosotros
podemos de vez en cuando contactarlo utilizando mensajes automarcados o pregrabados
o mensajes de texto al (a los) número(s) telefónicos que usted nos haya proporcionado.
Nosotros podemos realizar tales llamadas o enviar dichos mensajes de texto a efecto de
(proveerle notificaciones con respecto a su cuenta o la actividad de su cuenta; investigar o
prevenir fraude, o cobrar una algún adeudo de su parte. Usted acuerda que nosotros
podemos contactarlo utilizando mensajes automarcados o pregrabados o mensajes de texto
a fin de llevar acabo los fines descritos con antelación.
Sus Opciones. Usted no tiene la obligación de consentir la recepción de mensajes
automarcados o pregrabadas o mensajes de textos para poder utilizar y disfrutar de los
servicios y productos de NT Link. Cuando NT Link esté requerido para obtener su
consentimiento a tales comunicaciones, usted puede optar por revocar su consentimiento
contactando a soporte al cliente al (55) 4780-0200, (55) 5601-7570, 01-800-467-2574 o a
los números que se muestran en nuestro sitio web, informándonos de sus preferencias.
10.6 Marketing. NT Link frecuentemente realiza alianzas con otros proveedores de
servicios en beneficio de nuestros clientes. Es posible que encuentre ligas y/o anuncios
hacia terceros, sin embargo, de acuerdo a nuestro aviso de privacidad de datos y a la ley
de protección de datos personales en posesión de los particulares NT LINK NO
PORPORCIONA NINGUNA INFORMACIÓN. La comunicación con terceros será
directamente entre usted y el prestador del servicio.
10.7 Seguridad de la Contraseña. Usted es responsable de mantener la adecuada
seguridad y control de cualquiera de las identificaciones, contraseñas, números de
identificación personal (NIP) o de cualquier otro código que usted utilice para obtener acceso
a los Servicios de NT Link.
10.8 Impuestos. Es su responsabilidad determinar qué impuestos, en caso de haberlos, se
aplican a los pagos que hace o recibe, así como también recaudar, reportar y remitir el
impuesto correcto a la autoridad fiscal pertinente. NT Link no es responsable de determinar
si se aplican impuestos a su transacción, ni de recaudar, reportar o remitir ningún impuesto
que surja de cualquier transacción realizada por usted. Todas las compras realizadas sin
importar el giro o tipo de negocio y/o usuario, estarán sujetas a la tasa ordinaria del Impuesto
al Valor Agregado (“IVA”).Usted recibirá una factura con desglose de IVA por cada compra
que realice en cumplimiento con la legislación fiscal mexicana.
10.9 Acuerdo Total y Vigencia. Este acuerdo, junto con cualquier política aplicable y
publicada por NT Link, establece el acuerdo completo entre usted y NT Link
Comunicaciones S.A. de C.V. en relación con la prestación de servicios para emisión y
timbrado de CFDI. Cualquier término que deba sobrevivir por su naturaleza sobrevivirá a la
cancelación de este acuerdo. Si alguna disposición de este acuerdo se invalida o no es
aplicable, dicha disposición se suprimirá y se deberán aplicar las disposiciones restantes.
    10.10 Cesión. Usted no puede transferir ni ceder los derechos u obligaciones que tenga en
virtud de este acuerdo sin el previo consentimiento por escrito de NT Link. NT Link se
reserva el derecho de transferir o ceder este acuerdo o cualquier derecho u obligación que
forme parte de este acuerdo en cualquier momento, mediante simple aviso a usted en los
términos de este acuerdo.
10.11 No Renuncia. Nuestra omisión o retraso en el ejercicio de las acciones
correspondientes ante un incumplimiento hacia usted o de otros no significará una renuncia
a nuestro derecho de ejercer acciones con respecto a tal incumplimiento o un
incumplimiento posterior o similar.
10.12 Subrogación de Derechos. Si NT Link paga una reclamación, cancelación o Contra
cargo que usted haya presentado en contra de un tercero que ofrezca los servicios de NT
Link, usted acepta que NT Link se subrogará en sus derechos en contra del tercero en
relación con el pago, y que ejerza dichos derechos directamente o en su nombre.
11. Definiciones.
• "Comisiones" son aquellos montos que se aplican al uso de servicios a través de
plataformas de pago y según se describe en el Anexo A.
• "datos personales" Cualquier información concerniente a una persona física
identificada o identificable. Se considera que una persona física es identificable
cuando su identidad pueda determinarse directa o indirectamente a través de
cualquier información como puede ser nombre, número de identificación, datos de
localización, identificador en línea o uno o varios elementos de la identidad física,
fisiológica, genética, psíquica, patrimonial, económica, cultural o social de la persona.
• "Error" se refiere a una falla en el proceso.
• "Leyes de Protección de Datos" se refiere a la ley emitida el 5 de Julio de 2010 en
el diario oficial de la federación y que regula el tratamiento legítimo, controlado e
informado, a efecto de garantizar la privacidad y el derecho a la autodeterminación
informativa de las personas.
• "responsable del tratamiento de datos" (o simplemente el "responsable del
tratamiento") y "encargado del tratamiento de datos" (o simplemente el "encargado
del tratamiento") y el "interesado" tienen el significado que se otorgue a dichos
términos conforme a las Leyes de Protección de Datos y se refiere al responsable de
proteger la privacidad y confidencialidad de la información.
• “Actividades Restringidas” se refiere a todas aquellas actividades descritas en el
apartado 7 de este acuerdo y que están restringidas por NT Link Comunicaciones
S.A. de C.V.
• “Autorizar” o “Autorización” se refiere a la autorización expresa (ya sea por parte
del propietario de la cuenta o de NT Link) para realizar cualquier operación.
• “Cambio Sustancial” se refiere a un cambio en los términos de este acuerdo que
reduzca o aumente derechos y/o responsabilidades.
• “Cancelación” se refiere al término de la relación comercial entre usted y NT Link
por alguna de las siguientes causas: (a) su pago ha sido invalidado por el banco o
intermediario de pago en repetidas ocasiones (b) Porque usted así lo decide y lo
notifica a NT Link. (c) usted realizó actividades que infringen este acuerdo o cualquier
otra Política,(d) Alguna autoridad oficial notifica a NT Link que su cuenta debe ser
cancelada o (e) NT Link resuelve una Reclamación en su contra.
• “Comercio NT Link” y “Vendedor” se utilizan de manera indistinta y se refieren a
un usuario que comercializa bienes y que utiliza los productos y/o servicios de NT
Link para facturación.
• “Comunicaciones” se refiere a todo el intercambio de información entre usted y NT
Link en relación con su operación.
• “Contenido Digital” se refiere a aquellos productos que se entregan y utilizan en
formato electrónico.
• “Controversia” se refiere a la presentación de una inconformidad surgida a través
de alguna diferencia entre NT Link y usted.
• “Cuenta” o “Cuenta NT Link” se refiere a la asignación que se le da como usuario
de los productos y/o servicios de NT Link.
• “Cuenta Verificada” se refiere a una cuenta que indica que NT Link ha verificado
que el titular de la misma tiene control legal de ella. Una cuenta con estado verificado
no constituye un aval del usuario ni una garantía de las prácticas empresariales del
mismo
• “Días Hábiles” se refiere como los días de lunes a viernes, excluyendo aquellos días
festivos oficiales reconocidos en México.
• “Días” se entiende como los días calendario.
• “Información” se refiere al conjunto de datos que en conjunto y ordenados facilitan
su interpretación y dan sentido a los mismos.
• “NT Link,” “nosotros”, “nuestro”, “nuestra”, “nuestros” o “nuestras” se refiere
a NT Link Comunicaciones S.A. de C.V.
• “Perfil de Cuenta” se refiere a los privilegios que le fueron otorgados con su cuenta
para realizar diversas operaciones dentro de los servicios de NT Link.
• “Política” o “Políticas” se refiere a los lineamientos publicados por NT Link
Comunicaciones S.A. de C.V. los cuales deben seguirse para hacer uso de los
servicios de NT Link.
• “Reclamación” se refiere a cualquier observación que presente a NT Link en
relación con su cuenta.
• “Servicio de Atención al Cliente” es la atención que NT Link ofrece en línea o a
través de los medios descritos en el apartado 2.3 de este acuerdo.
• “Servicios NT Link” se refiere a todos los productos y/o servicios ofrecidos por NT
Link Comunicaciones S.A. de C.V.
• “Transacción No Autorizada” se refiere a una solicitud de compra realizada a
través de un intermediario de pagos que fue rechazada.
• “Usuario” se entiende como la persona o entidad que utiliza los Servicios NT Link,
incluido usted.
Anexo A: Comisiones.
Generalidades. NT Link Comunicaciones S.A. de C.V. no cobra ningún tipo de comisiones
por sus servicios.
Comisiones bancarias y de tarjeta de crédito. Puede que su banco o la compañía
emisora de su tarjeta de crédito o débito le cobre comisiones por el envío de fondos. NT
Link Comunicaciones S.A. de C.V. no se hace responsable de ninguna comisión que le
cobre su banco, compañía de tarjeta de crédito o débito u otra institución financiera en
función de su uso.
<br />
</asp:Panel>
</div>
</center>
	         
        
    	<br />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
             <ContentTemplate>
    
        <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
             
                 <div class="footer" >
        
                 <asp:CheckBox ID="cb2" runat="server" 
                     Text="Sí, estoy conforme con todos los términos y condiciones." 
                     AutoPostBack="True" oncheckedchanged="cb2_CheckedChanged"/>
           <asp:Button runat="server" ID="btnTermino" Text="Aceptar" Enabled="False"
            onclick="btnTermino_Click" CssClass="btn btn-outline-success"/>
	    &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Rechazar" Style="display:none"  CssClass="btn btn-outline-success"/>
                 &nbsp;
                 <asp:Button ID="Button3" runat="server"  onclick="Cerrar_Click"  CssClass="btn btn-outline-success"
                     Text="Cerrar" Width="62px" />
                      </div>
             </ContentTemplate>
             <Triggers>
                    <asp:PostBackTrigger  ControlID="btnTermino" />
                  
                </Triggers>
         </asp:UpdatePanel>
	        
            
	        
        
	</asp:Panel>

        <%--         </ContentTemplate>
         <Triggers>
              <asp:PostBackTrigger  ControlID="btnTermino" />
                </Triggers>
         
         </asp:UpdatePanel>--%>

    <iframe id="MyIframe" runat="server" style="display:none;" ></iframe>
          

    
</asp:Content>
