 <%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Ntlink33.Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <!---- **************************************************************** ---->

<script type="text/javascript">
 
    //localizar timers
    var iddleTimeoutWarning = null;
    var iddleTimeout = null;
 
    //esta funcion automaticamente sera llamada por ASP.NET AJAX cuando la pagina cargue y un postback parcial complete
    function pageLoad() {

       // alert('holaaaaa');
        //borrar antiguos timers de postbacks anteriores
        if (iddleTimeoutWarning != null)
            clearTimeout(iddleTimeoutWarning);
        if (iddleTimeout != null)
            clearTimeout(iddleTimeout);
 
        //leer tiempos desde web.config
        var millisecTimeOutWarning = <%= int.Parse(System.Configuration.ConfigurationManager.AppSettings["SessionTimeoutWarning"]) * 60000 %>;
        var millisecTimeOut = <%= int.Parse(System.Configuration.ConfigurationManager.AppSettings["SessionTimeout"]) * 60000  %>;
 
        //establece tiempo para mostrar advertencia si el usuario ha estado inactivo
        iddleTimeoutWarning = setTimeout("DisplayIddleWarning()", millisecTimeOutWarning);
        iddleTimeout = setTimeout("TimeoutPage()", millisecTimeOut);
    }

   

    function TimeoutPage() {
       // alert('salir');
        HideIddleWarning();
        //$find('warningMPE2').show(); 
         $('#MainContent_ModalCerrarSession').modal('show');
          this.SessionAbandon();
        return false;
   
    }
 
    function DisplayIddleWarning() {
          $('#MainContent_ModalAdvertencia').modal('show');
        return false;
        //$find('warningMPE').show();
    }
 
    function HideIddleWarning() {
    //    $find('warningMPE').hide();
         $('#MainContent_ModalAdvertencia').modal('hide');
            return false;
    }

    function HideIddleWarning2() {
              $('#MainContent_ModalCerrarSession').modal('hide');
         return false;
    
        // $find('warningMPE2').hide();
                       
    }
 
</script>



    
    
    <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Contacto</h3>
            </div>
            <div class ="card-body" >
	  
   <br />
                <div class="form-inline ">
         <div class = "row  my-2  justify-content-cente">
       <div class = "col-lg-3"></div>
       <div class = "col-lg-1   text-right">
       <asp:Label ID="Label2" runat="server" class="control-label" Text="Nombre"></asp:Label>
    </div>   <div class = "col-lg-4 ">
     <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control " Width="100%" />
         </div>
             </div>

                             <div class = "row  my-2">
       <div class = "col-lg-2"></div>
       <div class = "col-lg-2 text-right ">
       <asp:Label ID="Label1" runat="server" class="control-label" Text="Empresa"></asp:Label>
       </div><div class = "col-lg-4 ">
     <asp:TextBox runat="server" ID="txtEmpresa" CssClass="form-control" Width="100%" />
         </div>
             </div>
                                                <div class = "row  my-2">
       <div class = "col-lg-2"></div>
       <div class = "col-lg-2 text-right">
       <asp:Label ID="Label3" runat="server" class="control-label" Text="Correo"></asp:Label>
    </div>   <div class = "col-lg-4 ">
     <asp:TextBox runat="server" ID="txtCorreo" CssClass="form-control" Width="100%"/>
         </div>
            </div>
                                                              <div class = "row my-2">
       <div class = "col-lg-2"></div>
       <div class = "col-lg-2 text-right">
       <asp:Label ID="Label4" runat="server" class="control-label" Text="Telefono"></asp:Label>
    </div>   <div class = "col-lg-4">
     <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control" Width="100%"/>
         </div>
             </div>

                                                                                 <div class = "row  my-2">
       <div class = "col-lg-2"></div>
       <div class = "col-lg-2 text-right">
       <asp:Label ID="Label5" runat="server" class="control-label" Text="Comentarios"></asp:Label>
    </div>   <div class = "col-lg-4">
     <asp:TextBox runat="server" ID="txtComentarios" CssClass="form-control" TextMode="MultiLine" Height="100px" Width="100%"/>
         </div>
             </div>

                                                                               <div class = "row  my-2">
       <div class = "col-lg-2"></div>
       <div class = "col-lg-8">
       <asp:Label ID="LabResultado" runat="server" class="control-label" Text=""></asp:Label>
    </div> 
         <div class = "col-lg-2"></div>
             </div>

   <div class = "row  my-5 col-lg-12">
          <div class = "form-inline col-lg-8">
           <div class="btn-toolbar pull-right">
     <asp:LinkButton ID="btnAceptarPassword" OnClick="btnAceptarPassword_Click" 
                 CssClass="btn btn-default"  runat="server"  >
                             <i class="glyphicon glyphicon-send" title="enviar"></i> 
                            Enviar </asp:LinkButton>

       <asp:LinkButton ID="btnCerrar" OnClick="btnCerrar_Click" 
                CssClass="btn btn-default"  runat="server"  >
                             <i class="glyphicon glyphicon-remove-sign p-1" title="enviar"></i> 
                            Cerrar </asp:LinkButton>      
        
        </div>
   
</div>
</div>

</div>

        </div>
</div>




      <div id="ModalAdvertencia" class="modal fade" data-backdrop="static" role="dialog"
        runat="server" data-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header d-block bg-warning" style="padding:10px 10px 0 10px;">
        <h4 class="d-inline-block ml-3" style="color:#F90909" >¡Advertencia! </h4>
               <button type="button" class="close  bottom-ri    ght mr-3 btn-lg" aria-label="Close" data-dismiss="modal" style="font-size: 40px;">
                 <span aria-hidden="true">&times;</span></button>
                       </div>

                
      <div class="modal-body">
           <div class = "row">
                    
                    <div class = "col-12">
                   <asp:UpdatePanel ID="UpdatePanel12" runat="server"  UpdateMode="Conditional"   >
                    <ContentTemplate>
                     <asp:Label ID="Label14" runat="server" CssClass="form-label"  
                         Text="Tu sesión está a punto de expirar por inactividad."></asp:Label>
    
                   </ContentTemplate>
                      </asp:UpdatePanel>
                        
                    </div>
                    </div>
                     
        
     </div>
    
      <div class="modal-footer">
    
               <button type="button" class="btn btn-default" data-dismiss="modal">
               <span class="glyphicon glyphicon-remove-sign p-1" title="cerrar"></span>Cerrar</button>

      </div>

    </div>

  </div>
    </div>
      

     <div id="ModalCerrarSession" class="modal fade" data-backdrop="static" role="dialog"
        runat="server" data-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header d-block bg-warning" style="padding:10px 10px 0 10px;">
        <h4 class="d-inline-block ml-3" style="color:#F90909" >¡Advertencia! </h4>
               <button type="button" class="close  bottom-ri    ght mr-3 btn-lg" aria-label="Close" data-dismiss="modal" style="font-size: 40px;">
                 <span aria-hidden="true">&times;</span></button>
                       </div>

                
      <div class="modal-body">
           <div class = "row">
                    
                    <div class = "col-12">
                   <asp:UpdatePanel ID="UpdatePanel13" runat="server"  UpdateMode="Conditional"   >
                    <ContentTemplate>
                     <asp:Label ID="Label38" runat="server" CssClass="form-label"  
                         Text="Su sesión ha expirado por Inactividad de 10 min.."></asp:Label>
    
                   </ContentTemplate>
                      </asp:UpdatePanel>
                        
                    </div>
                    </div>
                     
        
     </div>
    
      <div class="modal-footer">
    
               <button type="button" class="btn btn-default" data-dismiss="modal">
               <span class="glyphicon glyphicon-remove-sign p-1" title="cerrar"></span>Cerrar</button>

      </div>

    </div>

  </div>
    </div>
      

</asp:Content>

