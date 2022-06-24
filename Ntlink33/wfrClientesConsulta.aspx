 
     <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrClientesConsulta.aspx.cs" MaintainScrollPositionOnPostBack="true"  Inherits="Ntlink33.wfrClientesConsulta" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
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



    
    <link href="Content/Paginacion.css" rel="stylesheet" />    
          <style type="text/css">
 
                  .bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn) {
    width: 100%;
}
                
                .bootstrap-select.btn-group .dropdown-menu.inner {
                max-width:300px;
                }

              .optionAlinear {
   text-align:left;   
}
      </style>
<asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
              
              
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Consulta de Clientes</h3>
            </div>
            <div class ="card-body" >
       
  <div class = "row">
                    <div class = "form-group col-lg-6">
                 <asp:Label ID="Label2" runat="server" class="control-label" Text="Empresa"></asp:Label>
       <asp:DropDownList runat="server" ID="ddlEmpresa" AppendDataBoundItems="True" DataTextField="RazonSocial"
         DataValueField="IdEmpresa" Enabled="False"   Width="100%"
                    CssClass="btn btn-default dropdown-toggle optionAlinear" backColor="White" />
                        </div>
                    <div class = "form-group col-lg-6">
                 <asp:Label ID="Label1" runat="server" class="control-label" Text="RFC o Razón Social"></asp:Label>
               <asp:TextBox runat="server" ID="txtBusqueda" CssClass="form-control" />
           </div>
      </div>
                <div class = "row col-12">
  
                            <div class="btn-toolbar pull-left">
                                        <asp:LinkButton ID="btnBuscar" CssClass="btn btn-default" 
                Text="Concepto" runat="server"   OnClick="btnBuscar_Click" >
                           <span class="glyphicon  glyphicon-search"></span> Buscar </asp:LinkButton>

                                <asp:LinkButton ID="Button1" CssClass="btn btn-default" 
                             OnClick="btnNuevoCliente_Click" 
                             Text="Empresa"
                             runat="server" ><span class="fas fa-plus"></span> Nuevo Cliente 
                         </asp:LinkButton>

                      </div>
              
      </div>
                   <div  class="row mt-4">
                <div class = "col-12">
                  <div class="table-responsive  border border-dark">
                          <asp:GridView ID="gvClientes" class="table table-bordered table-hover table-striped grdViewTable" 
                         runat="server" AutoGenerateColumns="false" BackColor="White" AlternatingRowStyle-HorizontalAlign="Left"  
                           onrowcommand="gvClientes_RowCommand"   onpageindexchanging="gvClientes_PageIndexChanging"   
                              Width="100%" RowStyle-Height="5" FooterStyle-BorderStyle="None" PageSize="10"  AllowPaging="true"
                              DataKeyNames="idCliente"  ItemStyle-Height = "5px"   >
                         <RowStyle  Height="10" Font-Size="14px"  cssclass="RowStyle" />
                         <FooterStyle  Font-Bold="True"  BorderStyle="None" />
                         <HeaderStyle BackColor="#f9f9f9" Font-Bold="True" ForeColor="Black" Height="30px" />
                          <AlternatingRowStyle  Height="10"  cssclass="AlternateRowStyle" />
                         <PagerStyle HorizontalAlign = "Center" Height="5" CssClass="GridPager"  />
            <EmptyDataTemplate>
            No se encontraron registros.
        </EmptyDataTemplate>

        <Columns>
            <asp:BoundField HeaderText="RFC" DataField="RFC" />
            <asp:BoundField HeaderText="Razón Social" DataField="RazonSocial" />
             <asp:TemplateField HeaderStyle-CssClass="sorting_disabled"  HeaderText= "Opciones"   ItemStyle-HorizontalAlign="Center">
             <ItemTemplate>
                 <div class="form-inline">
                     
                          <asp:LinkButton ID="gvlnkEditC" CommandName="EditarCliente" CommandArgument='<%#((GridViewRow)Container).RowIndex%>' CssClass="btn btn-light" runat="server" style=" padding:0px 3px;">
                                    <i class="glyphicon glyphicon-edit" title="Editar"></i> 
                                        </asp:LinkButton>
                    
                         <asp:LinkButton ID="btnEliminarCliente" ClientIDMode="AutoID" CommandName="Eliminar" CommandArgument='<%# Eval("idCliente") %>' CssClass="btn btn-light" runat="server" style=" padding:0px 3px;" >
                                    <i class="glyphicon glyphicon-trash" title="Eliminar"></i> 
                                        </asp:LinkButton>
                               </div>
                 </ItemTemplate>
            </asp:TemplateField>
            </Columns>
    </asp:GridView>
</div>    

</div>
         </div>


</div>
         </div>

           <asp:HiddenField ID="hf_DeleteID" runat="server" />


        </ContentTemplate>
    <Triggers>                <asp:AsyncPostBackTrigger  ControlID="lnkDelete" EventName="Click" />
             </Triggers>
                  </asp:UpdatePanel>

     
         
<!-- mensaje -->
       <div id="ModalEliminarCliente" class="modal fade" data-backdrop="static" role="dialog"
        runat="server" data-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header d-block bg-light"  style="padding:10px 10px 0 10px; ">
        <h4 class="d-inline-block ml-3"  >
                           Eliminar Cliente</h4>
                               <button type="button" class="close  bottom-ri    ght mr-3 btn-lg" aria-label="Close" data-dismiss="modal" style="font-size: 40px;">
                            <span aria-hidden="true">&times;</span></button>  </div>
               
      <div class="modal-body">
           <div class = "row">
           <div class = "col-12">
             <span> ¿Desea eliminar el registro?</span>
             </div>
                    </div>
                           
     </div>
      <div class="modal-footer">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server"  UpdateMode="Conditional"   >
    <ContentTemplate>

        <asp:HiddenField ID="HiddenField3" runat="server" />
  
          <asp:Button ID="btnYes" runat="server" Text="Yes" Style="display:none" CssClass="yes" />
                   <asp:LinkButton ID="lnkDelete" CssClass="btn btn-default" OnClick="lnkDelete_Click"  runat="server" >
                            Eliminar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
          
                                
             <button type="button" class="btn btn-default" data-dismiss="modal">
               <span class="glyphicon glyphicon-remove-sign p-1" title="cerrar"></span>Cerrar</button>
      </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="gvClientes"/>   
                  </Triggers>  
                </asp:UpdatePanel>
      </div>

    </div>

  </div>
    </div>
     


      <div id="ModalError" class="modal fade" data-backdrop="static" role="dialog"
        runat="server" data-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header d-block " style="padding:10px 10px 0 10px; background-color:#eb8181 ">
        <h4 class="d-inline-block ml-3" style="color:white" >Error </h4>
               <button type="button" class="close  bottom-ri    ght mr-3 btn-lg" aria-label="Close" data-dismiss="modal" style="font-size: 40px;">
                 <span aria-hidden="true">&times;</span></button>
                       </div>

                
      <div class="modal-body">
           <div class = "row">
                    
                    <div class = "col-12">
                   <asp:UpdatePanel ID="UpdatePanel4" runat="server"  UpdateMode="Conditional"   >
                    <ContentTemplate>
                    <asp:Label runat="server" ID="lblError" CssClass="form-label" ForeColor="Red" />
    
                   </ContentTemplate>
                       <Triggers>
                             <asp:AsyncPostBackTrigger  ControlID="lnkDelete" EventName="Click" />
                             
                       
                       </Triggers>
                    </asp:UpdatePanel>
                        
                    </div>
                    </div>
                     
        
     </div>
    
      <div class="modal-footer">
              
    

        <asp:HiddenField ID="HiddenField1" runat="server" />

                  <button type="button" class="btn btn-default" data-dismiss="modal">
               <span class="glyphicon glyphicon-remove-sign p-1" title="cerrar"></span>Cerrar</button>

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
