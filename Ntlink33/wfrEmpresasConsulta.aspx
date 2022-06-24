<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrEmpresasConsulta.aspx.cs" Inherits="Ntlink33.wfrEmpresasConsulta" %>
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
               <h3>Empresas</h3>
            </div>
            <div class ="card-body" style=" background-color:white" >
          <asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
  
                    <div  class="row mt-4">
                <div class = "col-12">
              <%--    <div class="table-responsive  border border-dark"  style="z-index:1"  >--%>
                          <asp:GridView ID="gvEmpresas" class="table table-bordered table-hover table-striped grdViewTable table-responsive  border border-dar" 
                         runat="server" AutoGenerateColumns="false" BackColor="White" AlternatingRowStyle-HorizontalAlign="Left"  
                         onrowcommand="gvEmpresas_RowCommand" Width="100%" RowStyle-Height="5" FooterStyle-BorderStyle="None"
                              DataKeyNames="IdEmpresa" AllowPaging="True" ItemStyle-Height = "5px"  >
                         <RowStyle  Height="10" Font-Size="14px"  cssclass="RowStyle" />
                         <FooterStyle  Font-Bold="True"  BorderStyle="None" />
                         <PagerStyle  Height="5" />
                         <HeaderStyle BackColor="#f9f9f9" Font-Bold="True" ForeColor="Black" Height="30px" />
                          <AlternatingRowStyle  Height="10"  cssclass="AlternateRowStyle" />

        <EmptyDataTemplate>
            No se encontraron registros.
        </EmptyDataTemplate>

        <Columns>
            <asp:BoundField   HeaderText="RFC"   DataField="RFC" />
            <asp:BoundField HeaderText="Razón Social" DataField="RazonSocial" />
          <%--  <asp:ButtonField Text="Editar" CommandName="EditarEmpresa" />
            <asp:ButtonField Text="Sucursales(Lugar de Expedición)" CommandName="EditarSucursal" />
           <asp:ButtonField Text="Conceptos" CommandName="EditarConceptos" />
         --%>     <asp:TemplateField  HeaderText= "Opciones"   ItemStyle-HorizontalAlign="Center">
                             <ItemTemplate  >
                               <%-- <div class="row ">
                                 <div class="form-inline col-12" >
                                  <asp:LinkButton ID="gvlnkEditC" CommandName="EditarEmpresa" 
                                      CommandArgument='<%#((GridViewRow)Container).RowIndex%>' 
                                      CssClass="btn btn-light " runat="server" style=" padding:0px 3px;">
                                    <i class="glyphicon glyphicon-edit" title="Editar"></i> 
                                        </asp:LinkButton>
                                      <asp:LinkButton ID="gvlnkSucursal" CommandName="EditarSucursal" 
                                          CommandArgument='<%#((GridViewRow)Container).RowIndex%>' 
                                            CssClass="btn btn-light mx-2 " runat="server" style=" padding:0px 3px;" >
                                           <i class="	glyphicon glyphicon-globe " title="Sucursales"></i> 
                                        </asp:LinkButton>
                                         <asp:LinkButton ID="gvlnkConceptos" CommandName="EditarConceptos" 
                                          CommandArgument='<%#((GridViewRow)Container).RowIndex%>' 
                                            CssClass="btn btn-light " runat="server" style=" padding:0px 3px;" >
                                           <i class="glyphicon glyphicon-apple " title="Conceptos"></i> 
                                        </asp:LinkButton>
                        
                                </div>
                                     </div>--%>
                                  
                                            <div class="dropdown"  >
  <button class="btn btn-light dropdown-toggle btn-sm" type="button" id="dropdownMenuButton" 
      data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
    Más
  </button>
  <div class="dropdown-menu dropdown-menu-right"   aria-labelledby="dropdownMenuButton"  >
    <a class="dropdown-item ">
        <asp:LinkButton ID="LinkButton1" CommandName="EditarEmpresa" Text="EditarEmpresa" 
                                      CommandArgument='<%#((GridViewRow)Container).RowIndex%>' 
                                      CssClass="dropdown-item" runat="server"  Width="100%" >
                                     
                                        </asp:LinkButton>
        </a>
      <a class="dropdown-item" >
                <asp:LinkButton ID="LinkButton2" CommandName="EditarSucursal"  Text="EditarSucursal"
                                          CommandArgument='<%#((GridViewRow)Container).RowIndex%>' 
                                            CssClass="dropdown-item" runat="server"  Width="100%" >
                                     
                                        </asp:LinkButton>
                                
    </a>
      <a class="dropdown-item" >
                <asp:LinkButton ID="LinkButton3" CommandName="EditarConceptos"  Text="EditarConceptos"
                                          CommandArgument='<%#((GridViewRow)Container).RowIndex%>' 
                                            CssClass="dropdown-item" runat="server" Width="100%" >
                                          
                                        </asp:LinkButton>
                        
      </a>

      </div>
                                                </div>
                                         
                            </ItemTemplate>
                        </asp:TemplateField>
        </Columns>
    </asp:GridView>
                     <%-- </div>--%>
        </div>
                        </div>

         <div class="row  mr-5  mt-4">
                       <div class = "col-12">
                       <div class="btn-toolbar pull-left">
                                <asp:LinkButton ID="btnNuevaEmpresa" CssClass="btn btn-default" 
                             OnClick="btnNuevaEmpresa_Click" 
                             Text="Empresa"
                             runat="server" ><span class="fas fa-plus"></span> Nueva Empresa 
                         </asp:LinkButton>

                      </div>
                     </div>
        </div>
            </ContentTemplate>
        </asp:UpdatePanel>

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
