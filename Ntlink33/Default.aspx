<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ntlink33._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
   

            <style type="text/css">
               
        .overrideClass
        {
            left: 0px !important;
            top: 0px !important;
        }

        .bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn) {
    width: 100%;
}
                
                .bootstrap-select.btn-group .dropdown-menu.inner {
                max-width:300px;
                
                }

              .optionAlinear {
   text-align:left;   
}

.input-group:not(.has-validation) > :not(:last-child):not(.dropdown-toggle):not(.dropdown-menu),
.input-group:not(.has-validation) > .dropdown-toggle:nth-last-child(n+3) {
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
    width: 100%;
}

    </style>
      
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



   
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>--%>

      <div class="panel panel-default" style="width:100%">
	  
          <div class="panel-heading" >
              <h4 class="panel-title">
            <a>
                 <b>   NTLINK COMUNICACIONES</b>
            </a>
          </h4>
          </div>
		 
        <div id="Acordion5" >
          <div class="panel-body">
         
               <div class="container-fluid" style="background-color:white; height: 70vh;">
                   
             <img id="imagen" src="Imagen/nominaInicio.png" class="img-fluid"    > 
  
    </div>
              
  <%--  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

  
    <div class="carousel-inner">
        <div class="item active">
              <img class="img-fluid" src="Imagen/nominaInicio.png" alt="Second slide" style="height:100%">
         
            <div class="carousel-caption">
                <h3>Información</h3>
                <p>Bienvenidos a Ntlink </p>
            </div>
        </div>

    </div>

    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
   
   --%>                

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
