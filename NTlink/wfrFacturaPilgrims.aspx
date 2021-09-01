<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrFacturaPilgrims.aspx.cs" MaintainScrollPositionOnPostBack="true" Inherits="GafLookPaid.wfrFacturaPilgrims"  EnableEventValidation="false" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
   <%@ Register TagPrefix="cc1" Namespace="WebControls.FilteredDropDownList" Assembly="WebControls.FilteredDropDownList" %>
     <%@ Register Assembly="DropDownChosen" Namespace="CustomDropDown" TagPrefix="cc1" %>
 <%@ MasterType VirtualPath="~/Site.Master" %>
 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
     <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server" />

    
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
      <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />
     <link href="Styles/pestaña.css" rel="stylesheet" />
   <%--   <script src="Scripts/v3-3-3-1-jquery.min.js"></script>
  --%>
    
    
<script type="text/javascript">
     
    function okClick() {
            //  find the confirm ModalPopup and hide it   
        $find("MainContent_mpexFac").hide();
        Progress();    
        
    }
    function Progress() {
        $find('<%= UpdateProgress2.ClientID %>').get_element().style.display = 'block';
          
        
        }
       </script>
     
     
  <style>

      .DivAncho {
          width:100%;
      }
      
      /*#MainContent_ddlClaveUnidadE_chzn {
          width:100%;
      }*/
      .auto-style1 {
          color:#FF0000
      }
      span.ajax__tab_tab {  
    height: 20px !important;  
} 
      a.ajax__tab_tab{ height:20px; !important; }

  </style>
<style type="text/css">
     
    </style>



    <%-- ejemplo de modalpopu --%>
       
      <asp:UpdatePanel ID="UpdatePanel7" runat="server"  UpdateMode="Conditional"   >
    <ContentTemplate>
      <asp:HiddenField ID="hf_DeleteID" runat="server" />
         
    <asp:Button ID="btnShow" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpex" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
        OkControlID="btnYes" CancelControlID="btnNo" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Eliminar Relacionado
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  ¿Desea eliminar el registro?
        </div>
        <div class="footer" >
                                    
            <asp:Button ID="btnYes" runat="server" Text="Yes" Style="display:none" CssClass="yes" />
                   <asp:LinkButton ID="lnkDelete" CssClass="btn btn-outline-success" OnClick="lnkDelete_Click"  runat="server" >
                            Eliminar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
                        
            <asp:Button ID="btnNo" runat="server" Text="Cancelar"  CssClass="btn btn-outline-success"  />
        </div>
    </asp:Panel>

          <asp:Button ID="btnShowFac" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpexFac" runat="server" PopupControlID="pnlPopupFac" TargetControlID="btnShowFac"
        OkControlID="btnYesFac" CancelControlID="btnNoFac" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlPopupFac" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Generar la factura
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  Confirma que deseas generar el comprobante
        </div>
        <div class="footer" >
                                    
            <asp:Button ID="btnYesFac" runat="server" Text="Yes" Style="display:none" CssClass="yes" />
                   <asp:LinkButton ID="lnkDeleteFac" CssClass="btn btn-outline-success" OnClientClick="okClick();"
                       OnClick="lnkDeleteFac_Click"  runat="server" >
                            Generar <i class="fa fa-check-square-o" title="delete"></i> 
                                </asp:LinkButton>
                        
            <asp:Button ID="btnNoFac" runat="server" Text="Cancelar"  CssClass="btn btn-outline-success"  />
        </div>
    </asp:Panel>


<asp:Button ID="btnShow2" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpexConceptos" runat="server" PopupControlID="PanelConceptoss"
         TargetControlID="btnShow2" OkControlID="btnYes2" CancelControlID="btnNo2" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="PanelConceptoss" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Eliminar Concepto
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  ¿Desea eliminar el registro?
        </div>
        <div class="footer" >
         <asp:HiddenField ID="HiddenField3" runat="server" />
                                    
            <asp:Button ID="btnYes2" runat="server" Text="Yes" Style="display:none" CssClass="yes" />
                   <asp:LinkButton ID="bntEliminarConcepto" CssClass="btn btn-outline-success" OnClick="bntEliminarConcepto_Click"  runat="server" >
                            Eliminar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
            <%--       <asp:LinkButton ID="bntCancelar" CssClass="btn btn-outline-success" CausesValidation="False"  OnClick="bntCancelar_Click"  runat="server" >
                            Cancelar  </asp:LinkButton>--%>
           <asp:Button ID="btnNo2" runat="server" Text="Cancelar" CausesValidation="false"  CssClass="btn btn-outline-success"  />
                        
        </div>
    </asp:Panel>

<asp:Button ID="btnShow6" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpexImpuesto" runat="server" PopupControlID="PanelImpuestos"
         TargetControlID="btnShow6" OkControlID="btnYes6" CancelControlID="btnNo6" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="PanelImpuestos" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Eliminar Impuesto
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  ¿Desea eliminar el registro?
        </div>
        <div class="footer" >
         <asp:HiddenField ID="HiddenField2" runat="server" />
                                    
            <asp:Button ID="btnYes6" runat="server" Text="Yes" Style="display:none" CssClass="yes" />
                   <asp:LinkButton ID="bntEliminarImpuesto" CssClass="btn btn-outline-success" OnClick="bntEliminarImpuesto_Click"  runat="server" >
                            Eliminar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
           <asp:Button ID="btnNo6" runat="server" Text="Cancelar" CausesValidation="false"  CssClass="btn btn-outline-success"  />
                        
        </div>
    </asp:Panel>


<asp:Button ID="btnShow3" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpMensajeError" runat="server" PopupControlID="PanelError"
         TargetControlID="btnShow3" OkControlID="btnYes3" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="PanelError" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header"  style="background-color:red">
            Error
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  <asp:Label ID="lblError" runat="server" ForeColor="Red" />
        </div>
        <div class="footer" >
         <asp:HiddenField ID="HiddenField4" runat="server" />
                                    
            <asp:Button ID="btnYes3" runat="server" Text="Aceptar"  CssClass="btn btn-outline-success" />
                         
        </div>
    </asp:Panel>

        <asp:Button ID="btnShow4" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpMensajeOK" runat="server" PopupControlID="PanelOK"
         TargetControlID="btnShow4" OkControlID="btnYes4" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="PanelOK" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Mensaje
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  <asp:Label ID="lblOK" runat="server" ForeColor="Black" />
        </div>
        <div class="footer" >
         <asp:HiddenField ID="HiddenField1" runat="server" />
                                    
            <asp:Button ID="btnYes4" runat="server" Text="Aceptar"  CssClass="btn btn-outline-success" />
                         
        </div>
    </asp:Panel>

         <asp:Button ID="btnShow5" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpMensajeOK2" runat="server" PopupControlID="PanelOK2"
         TargetControlID="btnShow5" OkControlID="btnYes5" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="PanelOK2" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Mensaje
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  <asp:Label ID="lblOK2" runat="server" ForeColor="Black" />
            <br />
             <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FF3300" 
                onclick="LinkButton1_Click">Descargar PDF</asp:LinkButton>
        </div>
        <div class="footer" >
         <asp:HiddenField ID="HiddenField5" runat="server" />
                                    
            <asp:Button ID="btnYes5" runat="server" Text="Aceptar"  CssClass="btn btn-outline-success" />
                         
        </div>
    </asp:Panel>

        <asp:Button ID="btnShow7" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="ModalBuscar" runat="server" PopupControlID="PanelBuscar"
         TargetControlID="btnShow7"  CancelControlID="btnNo7" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="PanelBuscar" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Buscar por RFC
        </div>
        <div class="body">
            <br />
                <div class = "row">
                    <div class = "col-lg-11 col-md-11 col-sm-11 col-xs-11">
                  <asp:Label ID="Label39" class="control-label" runat="server" Text="RFC"></asp:Label>
                     <asp:TextBox runat="server" CssClass="form-control" ID="txtRFCBus" />
             
                        </div>
                    </div>

            <br />
        </div>
        <div class="footer" >
         <asp:HiddenField ID="HiddenField6" runat="server" />
               <asp:Button runat="server" ID="btnBuscarRFC" Text="Buscar" 
                   class="btn btn-outline-success" OnClick="btnBuscarRFC_Click" />
             <asp:Button ID="btnNo7" runat="server" Text="Cancelar"  CssClass="btn btn-outline-success" />
                         
        </div>
    </asp:Panel>


   <asp:ModalPopupExtender runat="server" ID="mpeEdita" TargetControlID="btnEditarDummy"
        BackgroundCssClass="modalBackground" CancelControlID="btnCancelar" PopupControlID="panelEditaConcepto" />
    <asp:Panel runat="server" ID="panelEditaConcepto" CssClass="modalPopup" Style="display: none">
         <div class="header" >
            Editar Concepto
        </div>
    <div class="body">
        <div class="card-body">
                <div class = "row"> 
                    <div class="col-lg-1" ></div>                    
                    <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label2" runat="server" Text="ClaveUnidad"></asp:Label>
                     </div>
                    <div class="col-lg-6" >
                        <asp:UpdatePanel ID="UPModalPopupOrderPanel" runat="server" UpdateMode="Conditional">
                       <ContentTemplate>
        
                   <asp:DropDownList ID="ddlClaveUnidadE" runat="server" CssClass="form-control" AutoPostBack="True" 
                       OnSelectedIndexChanged="ddlClaveUnidadE_SelectedIndexChanged">
                      </asp:DropDownList>                        
                 </ContentTemplate>
                </asp:UpdatePanel>
 
                        </div>
                   
                    </div>
        <div class = "row form-inline"> 
            <div class="col-lg-1" ></div>                    
                      <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label5" runat="server" Text="Código"></asp:Label>
                  </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="txtCodigoE" runat="server" CssClass="form-control" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Requerido"
                        Display="Dynamic" ControlToValidate="txtCodigoE" ValidationGroup="Concepto" />
                        </div>
            </div>
         <div class = "row form-inline"> 
             <div class="col-lg-1" ></div>                    
                     <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label20" runat="server" Text="Cantidad"></asp:Label>
                      </div>
                    <div class="col-lg-6">
                        <asp:TextBox runat="server" ID="txtCantidadEdita" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Requerido"
                        Display="Dynamic" ControlToValidate="txtCantidadEdita" ValidationGroup="Concepto" />
                    <asp:CompareValidator runat="server" ID="CompareValidator2" ControlToValidate="txtCantidadEdita"
                        Display="Dynamic" Type="Double" ErrorMessage="* Cantidad Invalida" ValidationGroup="Concepto"
                        Operator="DataTypeCheck" />
                    <asp:HiddenField runat="server" ID="hidDetalle" />
                    <asp:HiddenField runat="server" ID="hidNumero" />
                </div>
          </div>
          <div class = "row form-inline"> 
              <div class="col-lg-1" ></div>                    
                     <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label21" runat="server" Text="Unidad de Medida"></asp:Label>
                        </div>
                    <div class="col-lg-6"> 
                        <asp:TextBox runat="server" ID="txtUnidadEdita" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Requerido"
                        Display="Dynamic" ControlToValidate="txtUnidadEdita" ValidationGroup="Concepto" />
          </div>
           </div>
           <div class = "row form-inline">
               <div class="col-lg-1" ></div>                    
                    <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label22" runat="server" Text="N° de identificación"></asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox runat="server" ID="txtNoIdentificacionEdita" CssClass="form-control"></asp:TextBox>
           </div>
            </div>
           <div class = "row form-inline"> 
               <div class="col-lg-1" ></div>  
                    <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label23" runat="server" Text="Descripción"></asp:Label>
                   </div>
                    <div class="col-lg-6">
                        <asp:TextBox runat="server" ID="txtDescripcionEdita" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Requerido"
                        Display="Dynamic" ControlToValidate="txtDescripcionEdita" ValidationGroup="Concepto" />
              </div>
            </div> 
           <div class = "row form-inline"> 
               <div class="col-lg-1" ></div>  
                    <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label24" runat="server" Text="Observaciones"></asp:Label>
                  </div>
                    <div class="col-lg-6">
                        <asp:TextBox runat="server" ID="txtObservacionesEdita" CssClass="form-control"></asp:TextBox>
          </div>
           </div>
           <div class = "row form-inline"> 
               <div class="col-lg-1" ></div>  
                    <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label25" runat="server" Text="Precio Unitario"></asp:Label>
                   </div>
                    <div class="col-lg-6">
                        <asp:TextBox runat="server" ID="txtPrecioUnitarioEdita" CssClass="form-control"></asp:TextBox>
                    <asp:CompareValidator runat="server" ID="CompareValidator3" ControlToValidate="txtPrecioUnitarioEdita"
                        Display="Dynamic" Type="Double" ErrorMessage="* Cantidad Invalida" ValidationGroup="Concepto"
                        Operator="DataTypeCheck" />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ErrorMessage="* Requerido"
                        Display="Dynamic" ControlToValidate="txtPrecioUnitarioEdita" ValidationGroup="Concepto" />
           </div>
           </div>
           <div class = "row form-inline"> 
               <div class="col-lg-1" ></div>  
                    <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label26" runat="server" Text="Descuento"></asp:Label>
                      </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="txtDescuentoE" runat="server" CssClass="form-control" />
           </div>
           </div>
         <div class = "row form-inline"> 
             <div class="col-lg-1" ></div>  
                    <div class="col-lg-5" >
                        <asp:Label  class="control-label" ID="Label27" runat="server" Text="Cuenta Predial"></asp:Label>
                   </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="txtCuentaPredialE" runat="server" CssClass="form-control"/>
                    </div>
             </div>
            </div>
  </div>
        <div class="footer" >
               <asp:Button runat="server" ID="btnGuardar" Text="Guardar" ValidationGroup="Concepto" class="btn btn-outline-success"
                OnClick="btnGuardar_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnCancelar" Text="Cancelar" CausesValidation="False"  class="btn btn-outline-success" />
        </div>
    </asp:Panel>
    <asp:Button runat="server" ID="btnEditarDummy" Style="display: none;" class="btn btn-primary" />
   



    </ContentTemplate>
           <Triggers>
               
                 <asp:AsyncPostBackTrigger  ControlID="ddlClaveUnidadE" EventName="SelectedIndexChanged" />
                 <asp:AsyncPostBackTrigger  ControlID="lnkDelete" EventName="Click" />
                 <asp:AsyncPostBackTrigger  ControlID="bntEliminarConcepto" EventName="Click" />
        <%--         <asp:AsyncPostBackTrigger  ControlID="bntCancelar" EventName="Click" />
        --%> 
            </Triggers>
            </asp:UpdatePanel>

     <%-- ejemplo de modalpopu Consultas--%>

        <asp:UpdatePanel ID="UpdatePanel5" runat="server"  UpdateMode="Conditional"   >
    <ContentTemplate>
  
     <asp:ModalPopupExtender runat="server" ID="mpeBuscarConceptos" TargetControlID="btnConceptoDummy"
        BackgroundCssClass="modalBackground" CancelControlID="btnCerrarConcepto" PopupControlID="pnlBuscarConceptos" />
    <asp:Panel runat="server" ID="pnlBuscarConceptos"  CssClass="modalPopup" Style="display: none" Width="600px">
        <div class="header"  >
            Buscar Conceptos
        </div>
        <div class="body">
           <div class = "row">
               <div class="col-lg-12">
          &nbsp;&nbsp;   <asp:Label ID="Label6" class="control-label" runat="server" Text="Descripción producto"></asp:Label>
               <asp:TextBox runat="server" CssClass="form-control" ID="txtConceptoBusqueda" />
               </div>
               </div>
              <div class="row">

               <div class="col-lg-12">
                <asp:Button runat="server" ID="btnBuscarConcepto" 
                Text="Buscar" OnClick="btnBuscarConcepto_Click"  class="btn btn-outline-success" /> 
               </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                  <asp:Label runat="server" ID="lblMensaje" ForeColor="Red" />
               </div>
            </div>
            
             <div class="row" style="text-align:center;  width:100%">
                 <div class="col-lg-12 overflow-auto"style="max-height: 300px; overflow: scroll;">
                    <div class="border border-success" style=" width:80%;  background-color: #2d282808;margin:0px auto  " >
                       <asp:GridView runat="server" ID="gvBuscarConceptos" Width="100%" AutoGenerateColumns="False"  CssClass="table table-hover table-striped grdViewTable"
                DataKeyNames="c_ClaveProdServ1" ShowHeaderWhenEmpty="True" OnRowCommand="gvBuscarConceptos_RowCommand">
                <Columns>
                    <asp:BoundField HeaderText="Código" DataField="c_ClaveProdServ1" />
                    <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
                    <asp:ButtonField Text="Seleccionar" CommandName="Seleccionar" />
                </Columns>
                </asp:GridView>
                    </div>
             </div>
                 </div>
        </div>
        <br />
     <div class="footer" >
        <asp:Button runat="server" ID="btnCerrarConcepto" Text="Cancelar"  class="btn btn-outline-success" />
     </div>
         </asp:Panel>
    <asp:Button runat="server" ID="btnConceptoDummy" Style="display: none;" />

  <asp:ModalPopupExtender runat="server" ID="mpeBuscarConceptoHistorico" TargetControlID="btnConceptoHistoricoDummy" 
    BackgroundCssClass="modalBackground"
	 CancelControlID="btnCerrarConceptoHistorico" PopupControlID="pnlBuscarConceptoHistorico" />
	<asp:Panel runat="server" ID="pnlBuscarConceptoHistorico" CssClass="modalPopup" Style="display: none" Width="500px">
	   <div class="header"  >
            Buscar Conceptos Historico
        </div>
        <div class="body">
     	<div class = "row">
               <div class="col-lg-12">
          &nbsp;&nbsp;   <asp:Label ID="Label28" class="control-label" runat="server" Text="Clave de producto"></asp:Label>
                                   <asp:TextBox runat="server"  CssClass="form-control" ID="txtConceptoHistoricoBusqueda"  />
                   </div>
               </div>
              <div class="row">
                  <div class="col-lg-12">
               			<asp:Button runat="server" ID="btnBuscarConceptoHistorico" Text="Buscar" onclick="btnBuscarConceptoHistorico_Click"  class="btn btn-outline-success"/>
		       </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                   <asp:Label runat="server" ID="lblMensajeHistorico" ForeColor="Red" />
		       </div>
            </div>
            
             <div class="row" style="text-align:center;  width:100%">
                 <div class="col-lg-12 overflow-auto"style="max-height: 300px; overflow: scroll;">
                    <div class="border border-success" style=" width:80%;  background-color: #2d282808;margin:0px auto  " >
        <asp:GridView runat="server" ID="gvBuscarConceptosHistorico" Width="100%" AutoGenerateColumns="False" 
		 DataKeyNames="IdProducto" ShowHeaderWhenEmpty="True" CssClass="table table-hover table-striped grdViewTable"
			onrowcommand="gvBuscarConceptosHistorico_RowCommand">
			<Columns>
				<asp:BoundField HeaderText="Código" DataField="Codigo" />
				<asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
				<asp:BoundField HeaderText="Observaciones" DataField="Observaciones" />
				<asp:BoundField HeaderText="Precio" DataField="PrecioP" DataFormatString="{0:C}" />
				<asp:ButtonField  Text="Seleccionar" CommandName="Seleccionar"/>
			</Columns>
		</asp:GridView>
        </div>
             </div>
                 </div>
        </div>
        <br />
        <div class="footer" >
     		<asp:Button runat="server" ID="btnCerrarConceptoHistorico" Text="Cancelar" class="btn btn-outline-success" />
	</div>
            </asp:Panel>
	<asp:Button runat="server" ID="btnConceptoHistoricoDummy" style="display: none;"/>
    



         </ContentTemplate>
           <Triggers>

            </Triggers>
            </asp:UpdatePanel>

    <%-- ejemplo de modalpopu consultas--%>
  
  <asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
         
    <section class="services">
        <div class="container">
            <div class="title text-center">
            
               
            </div>
          
              
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3> Generar CFDI Pilgrims</h3>
            </div>
            <div class ="card-body" >
                 
                               
                     <asp:UpdatePanel ID="UpdatePanel6" runat="server"  UpdateMode="Conditional"  >
                     <ContentTemplate>
    
                <div class = "row form-group"> <%--Empresa--%>
                    <div class="col-lg-6 " >
                        <asp:Label  class="control-label" ID="Label8" runat="server" Text="Empresa"></asp:Label>
                       <asp:DropDownList runat="server" Width="100%" ID="ddlEmpresa" 
                           AutoPostBack="True"  DataTextField="RazonSocial" DataValueField="idEmpresa" 
                           CssClass="form-control"
                           OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged"   />                        
                    </div>
                                        
                    <div class="col-lg-3 " style="color:red;" >
                            <asp:Label ID="lblVencimiento" class="control-label" runat="server" ForeColor="Red" Font-Bold="true" style=" font-size: x-small; text-align: left; font-variant: small-caps;" Width="250px"></asp:Label>
                    </div>
                    
                </div>  
             
                <div class = "row form-group">
                    <div class = "col-lg-6">
                        <asp:Label  class="control-label" ID="lblCliente" runat="server" Text="Cliente"  ></asp:Label>
                        <div style="width:100%;display: flex;  align-items: stretch;">
                         <cc1:DropDownListChosen ID="ddlClientes" runat="server" AllowSingleDeselect="true"
                               AutoPostBack="True"  cssClass="form-control" data-toggle="dropdown"  
                               DataPlaceHolder="Seleccione..." DataTextField="RazonSocial" class="form-control"
                               DataValueField="idCliente"   NoResultsText="No hay resultados coincidentes."
                               OnSelectedIndexChanged="ddlClientes_SelectedIndexChanged"   
                               SelectMethod=""   AppendDataBoundItems="True" Width="100%">
                     
                            </cc1:DropDownListChosen>
                                   <asp:LinkButton ID="btnBuscar" CssClass="btn btn-outline-success"  OnClick="btnBuscar_Click" 
                             runat="server" ><span class="glyphicon glyphicon-search"></span> 
                         </asp:LinkButton>

                     </div>
                    </div>
                                       
                   
                    <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="Label12" runat="server" Text="Folio NTLINK" ></asp:Label>
                        <asp:TextBox ID="txtFolio" runat="server" CssClass="form-control"  Enabled="False" />
                       
                    </div>
                    <div class="col-lg-3" >
                        <asp:Label  class="control-label" ID="Label10" runat="server" Text="RazonSocial" ></asp:Label>
                        <asp:TextBox ID="txtRazonSocial" runat="server"  CssClass="form-control" TextMode="MultiLine"/>
                    </div>
                 </div>
                         </ContentTemplate>
                         <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlEmpresa" EventName="SelectedIndexChanged" /> 
                             <asp:AsyncPostBackTrigger ControlID="ddlClientes" EventName="SelectedIndexChanged" />    
                         </Triggers>
                         </asp:UpdatePanel>
                
                <div class = "row form-group " > 
                   
                    <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="lblFolio" runat="server" Text="Folio" ></asp:Label>
                        <asp:TextBox ID="txtFolioSat" runat="server" CssClass="form-control" />
                       
                    </div>
                    <div class="col-lg-3" >
                        <asp:Label  class="control-label" ID="Label1" runat="server" Text="Serie" ></asp:Label>
                        <asp:TextBox ID="txtSerie" runat="server"  CssClass="form-control"/>
                    </div>

                    <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="Label9" runat="server" Text="Sucursal"></asp:Label>
                        <asp:DropDownList ID="ddlSucursales" runat="server"   CssClass="form-control"
                            AppendDataBoundItems="True" DataValueField="LugarExpedicion"     DataTextField="Nombre">

                        </asp:DropDownList>
                     </div>

                      <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="lblTipoDocumento" runat="server" Text="Tipo de Comprobante"></asp:Label>
                        <asp:DropDownList runat="server" ID="ddlTipoDocumento" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoDocumento_SelectedIndexChanged" CssClass="form-control">
                            <asp:ListItem Text="Factura" Value="Ingreso" ></asp:ListItem>
                            <asp:ListItem Text="Nota de Crédito" Value="Egreso" ></asp:ListItem>
                            <asp:ListItem Text="Recibo de Donativo" Value="Donativo" ></asp:ListItem>
                            <asp:ListItem Text="Recibo de Arrendamiento" Value="Arrendamiento" ></asp:ListItem>
                            <asp:ListItem Text="Recibo de Honorarios" Value="Honorarios" ></asp:ListItem>
                            
                        </asp:DropDownList>
                    </div>
                    </div>
                <div class = "row form-group " > 
                                                     

                     <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="lblFormaPago" runat="server" Text="Forma de Pago"></asp:Label>
                        <asp:DropDownList ID="ddlFormaPago"  runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlFormaPago_SelectedIndexChanged" 
                             
                            >
                            <asp:ListItem runat="server" Text="Efectivo" Value="01"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Cheque nominativo" Value="02"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Transferencia electrónica de fondos" Value="03"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Tarjeta de crédito" Value="04"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Monedero electrónico" Value="05"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Dinero electrónico" Value="06"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Vales de despensa" Value="08"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Dación en pago" Value="12"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Pago por subrogación" Value="13"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Pago por consignación" Value="14"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Condonación" Value="15"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Compensación" Value="17"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Novación" Value="23"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Confusión" Value="24"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Remisión de deuda" Value="25"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Prescripción o caducidad" Value="26"></asp:ListItem>
                            <asp:ListItem runat="server" Text="A satisfacción del acreedor" Value="27"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Tarjeta de débito" Value="28"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Tarjeta de servicios" Value="29"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Aplicación de anticipos" Value="30"></asp:ListItem>
                            <asp:ListItem runat="server" Value="31" Text="Intermediario pagos"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Por definir" Value="99"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                     <div class = "form-group col-lg-3">
                        <asp:Label ID="lblMetodoPago" class="control-label" runat="server" Text="Método de Pago"></asp:Label>
                        <asp:DropDownList ID="ddlMetodoPago"   runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlMetodoPago_SelectedIndexChanged" 
                        >
                            <asp:ListItem runat="server" Text="Pago en una sola exhibición" Value="PUE"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Pago en parcialidades o diferido" Value="PPD"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                      <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="Label11" runat="server" Text="Status Factura" ></asp:Label>
                           <asp:DropDownList runat="server" ID="ddlStatusFactura" AutoPostBack="true" OnSelectedIndexChanged="ddlStatusFactura_SelectedIndexChanged" CssClass="form-control" >
                            <asp:ListItem Value="0" Text="Pendiente"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Pagada"></asp:ListItem>
                        </asp:DropDownList>    
                    </div>
                    <div class="col-lg-3" >
                        <asp:Label  class="control-label" ID="lblFechaPago" runat="server" Text="Fecha de Pago" Visible="False"  ></asp:Label>
                    <asp:TextBox runat="server" ID="txtFechaPago" CssClass="form-control"  Visible="False" />
                            <asp:CompareValidator runat="server" ID="cvFechaInicial" ControlToValidate="txtFechaPago"
                            Display="Dynamic" ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" ForeColor="Red"/>
                        <asp:CalendarExtender runat="server" ID="ceFechaInicial" Animated="False" PopupButtonID="txtFechaPago"
                            TargetControlID="txtFechaPago" Format="dd/MM/yyyy" />
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-error"
                         ID="RequiredFieldValidator10" ControlToValidate="txtFechaPago"
                            Display="Dynamic" ErrorMessage="* Requerido" ForeColor="Red"
                         ValidationGroup="CrearFactura"  />
                   
                    </div>
                    

                  </div>
              
              
                <div class = "row"> <%--Moneda/TipoCambio--%>
                     <div class = "form-group col-lg-3">
                           <asp:Label ID="Label7" class="control-label" runat="server" Text="CondicionesPago"></asp:Label>
           
                    <asp:TextBox ID="txtCondicionesPago" runat="server"         CssClass="form-control" ></asp:TextBox>
                        </div>
                       <div class = "form-group col-lg-3">
                           <asp:Label ID="Label13" class="control-label" runat="server" Text="UsoCFDI"></asp:Label>
                        <asp:DropDownList ID="ddlUsoCFDI" runat="server" AutoPostBack="True" 
                            CssClass="form-control" Width="209px"  >
                         <asp:ListItem runat="server"  Value="G01" Text="Adquisición de mercancias" ></asp:ListItem>
                         <asp:ListItem runat="server"  Value="G02" Text="Devoluciones, descuentos o bonificaciones" ></asp:ListItem>
                         <asp:ListItem runat="server"  Value="G03" Text="Gastos en general" ></asp:ListItem>
                         <asp:ListItem runat="server"  Value="I01" Text="Construcciones" ></asp:ListItem>
                         <asp:ListItem runat="server"  Value="I02" Text="Mobilario y equipo de oficina por inversiones" ></asp:ListItem>
                         <asp:ListItem runat="server"  Value="I03" Text="Equipo de transporte" ></asp:ListItem>
                         <asp:ListItem runat="server"  Value="I04" Text="Equipo de computo y accesorios" ></asp:ListItem>
<asp:ListItem runat="server"  Value="I05" Text="Dados, troqueles, moldes, matrices y herramental" ></asp:ListItem>
<asp:ListItem runat="server"  Value="I06" Text="Comunicaciones telefónicas" ></asp:ListItem>
<asp:ListItem runat="server"  Value="I07" Text="Comunicaciones satelitales" ></asp:ListItem>
<asp:ListItem runat="server"  Value="I08" Text="Otra maquinaria y equipo" ></asp:ListItem>
<asp:ListItem runat="server"  Value="D01" Text="Honorarios médicos, dentales y gastos hospitalarios." ></asp:ListItem>
<asp:ListItem runat="server"  Value="D02" Text="Gastos médicos por incapacidad o discapacidad" ></asp:ListItem>
<asp:ListItem runat="server"  Value="D03" Text="Gastos funerales." ></asp:ListItem>
<asp:ListItem runat="server"  Value="D04" Text="Donativos." ></asp:ListItem>
<asp:ListItem runat="server"  Value="D05" Text="Intereses reales efectivamente pagados por créditos hipotecarios (casa habitación)." ></asp:ListItem>
<asp:ListItem runat="server"  Value="D06" Text="Aportaciones voluntarias al SAR." ></asp:ListItem>
<asp:ListItem runat="server"  Value="D07" Text="Primas por seguros de gastos médicos." ></asp:ListItem>
<asp:ListItem runat="server"  Value="D08" Text="Gastos de transportación escolar obligatoria." ></asp:ListItem>
<asp:ListItem runat="server"  Value="D09" Text="Depósitos en cuentas para el ahorro, primas que tengan como base planes de pensiones." ></asp:ListItem>
<asp:ListItem runat="server"  Value="D10" Text="Pagos por servicios educativos (colegiaturas)" ></asp:ListItem>
<asp:ListItem runat="server"  Value="P01" Text="Por definir" ></asp:ListItem> 
  </asp:DropDownList>    

                       </div>
                    <div class = "form-group col-lg-3">
                        <asp:Label ID="lblMoneda" class="control-label" runat="server" Text="Moneda"></asp:Label>
           
                        <cc1:DropDownListChosen ID="ddlMoneda" runat="server"  
            NoResultsText="No hay resultados coincidentes."  Width="185px"
                            SelectMethod=""  OnSelectedIndexChanged="ddlMoneda_SelectedIndexChanged"        
            DataPlaceHolder="Escriba aquí..." AllowSingleDeselect="true" AutoPostBack="True" AppendDataBoundItems="True" >              
        </cc1:DropDownListChosen>
                    </div>
                    <div class = "form-group col-lg-3">
                        <asp:Label ID="lblTipoCambio" class="control-label" runat="server" Text="Tipo de Cambio" Visible="false"></asp:Label>
                        <asp:TextBox ID="txtTipoCambio" runat="server" Visible="false" CssClass="form-control"/>
                    </div>
                </div>  <%--Termina Moneda/TipoCambio--%>
                
                   <div class = "row form-group " > 
                   
                    <div class="col-lg-6 " >
                        <asp:Label  class="control-label" ID="Label15" runat="server" Text="Observaciones" ></asp:Label>
                        <asp:TextBox runat="server" ID="txtProyecto"  CssClass="form-control" />
          
                    </div>
                        <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="Label29" runat="server" Text="Decimales Importe" ></asp:Label>
                       <asp:DropDownList runat="server" ID="ddlDecimales" AutoPostBack="True" 
                                OnSelectedIndexChanged="ddlDecimales_SelectedIndexChanged" 
                                CssClass="form-control" Width="66px" >
                            <asp:ListItem Value="2" Text="2" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="3" Text="3"></asp:ListItem>
                        <asp:ListItem Value="4" Text="4"></asp:ListItem>
                        <asp:ListItem Value="5" Text="5"></asp:ListItem>
                        <asp:ListItem Value="6" Text="6"></asp:ListItem>
                        </asp:DropDownList>
          
                    </div>
                      <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="LblConfirmacion" runat="server" Text="Confirmación" visible="false" ></asp:Label>
                        <asp:TextBox ID="txtConfirmacion" runat="server" CssClass="form-control" visible="false"/>
              </div>
            </div>  
                  <div class = "row form-group " id="trDonativo"  runat="server"> 
                          <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="Label16" runat="server" Text="N. de autorización del Donativo" ></asp:Label>
                        <asp:TextBox runat="server" ID="txtDonatAutorizacion"  CssClass="form-control" />
          
                    </div>
                    <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="Label17" runat="server" Text="Fecha de autorización >del donativo" ></asp:Label>
                        <asp:TextBox ID="txtDonatFechautorizacion" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:CalendarExtender runat="server" Format="dd/MM/yyyy" 
                            PopupButtonID="txtDonatFechautorizacion" 
                            TargetControlID="txtDonatFechautorizacion" />
                    </div>
                
                 </div>
        </div>  <%--Termina Primera Sección - Generar CFDI--%>



        <%---------------Segunda Sección - CFDI Relacionados---------------%>
               <asp:UpdatePanel ID="UpdatePanel1" runat="server"  UpdateMode="Conditional"  >
               <ContentTemplate>
      <asp:Panel runat="server" CssClass="table-responsive">
          
        <div class = "card mt-2">   
            <div class = "card-header">
                <asp:CheckBox ID="cbCfdiRelacionados" runat="server" AutoPostBack="true"
                Text="CFDIs Relacionados" OnCheckedChanged="cbCfdiRelacionados_CheckedChanged" />
            </div>
            <div class = "card-body" id="DivCfdiRelacionados" runat="server" >
                <div class = "row">
                    <div class = "form-group col-lg-6">
                        <asp:Label ID="lblUUID" runat="server" class="control-label" Text="UUID"></asp:Label>
                        <asp:TextBox ID="txtUUDI" runat="server" Width="100%" CssClass="form-control"/>
                    </div>
                    <div class = "form-group col-lg-6">
                        <asp:Label ID="lblTipoRelacion" runat="server" class="control-label" Text="Tipo de Relación"></asp:Label>
                        <asp:DropDownList ID="ddlTipoRelacion" Height="28px"  runat="server" CssClass="form-control">
                            <asp:ListItem runat="server" Text="Nota de crédito de los documentos relacionados" Value="01" />
                            <asp:ListItem runat="server" Text="Nota de débito de los documentos relacionados" Value="02" />
                            <asp:ListItem runat="server" Text="Devolución de mercancía sobre facturas o traslados previos" Value="03" />
                            <asp:ListItem runat="server" Text="Sustitución de los CFDI previos" Value="04" />
                            <asp:ListItem runat="server" Text="Traslados de mercancias facturados previamente" Value="05" />
                            <asp:ListItem runat="server" Text="Factura generada por los traslados previos" Value="06" />
                            <asp:ListItem runat="server" Text="CFDI por aplicación de anticipo" Value="07" />
                             <asp:ListItem runat="server" Text="Factura generada por pagos en parcialidades" Value="08" />
                             <asp:ListItem runat="server" Text="Factura generada por pagos diferidos" Value="09" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div class = "row">
                    <div class = "col-lg-12 float-right" style="float:right">
                        <asp:Button ID="btnCfdiRelacionado" runat="server" Cssclass="btn btn-outline-success" 
                        Text="Añadir Cfdi Relacionado" ValidationGroup="AgregarCfdiRelacionado" OnClick="btnCfdiRelacionado_Click"/>                            
                    </div>
                </div>
                <br />
                <div style="text-align:center; width:100%">
                    <div class="border border-success" style=" width:80%;   background-color: #2d282808;margin:0px auto  " >
                        <asp:GridView ID="gvCfdiRelacionado" runat="server" AutoGenerateColumns="False" GridLines="None" 
                          ShowHeaderWhenEmpty="True" DataKeyNames="ID" Width="100%"  AlternatingRowStyle-HorizontalAlign="Center"
                            OnRowCommand="gvCfdiRelacionado_RowCommand"   CssClass="table table-hover table-striped grdViewTable" OnRowDataBound="gvCfdiRelacionado_RowDataBound">
                            <rowstyle Height="6px" /><alternatingrowstyle  Height="6px"/>
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="UUID" HeaderText="UUID" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                              
                            
                            <asp:TemplateField HeaderStyle-CssClass="sorting_disabled"  ItemStyle-Width="10%"   ItemStyle-HorizontalAlign="Right" >
                            <ItemTemplate  >
                                 <div class="form-inline">
                                       <asp:LinkButton ID="gvlnkDelete" ClientIDMode="AutoID" CommandName="deleteRecord" CommandArgument='<%#((GridViewRow)Container).RowIndex%>' CssClass="btn btn-outline-success" runat="server" style=" padding:1px 6px;" >
                                    <i class="fa fa-trash " title="Eliminar"></i> 
                                        </asp:LinkButton>
                               </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                            </Columns>
                        </asp:GridView>                            
                    </div>
                </div>
            </div>  <%--Termina panel-body--%>
        </div>  <%--Termina Segunda Sección - CFDI Relacionados--%>
          </asp:Panel>


        

                     </ContentTemplate>
              <Triggers>

                 <%--   <asp:AsyncPostBackTrigger ControlID="gvCfdiRelacionado"/>   
                        <asp:AsyncPostBackTrigger ControlID="gvCfdiRelacionado" EventName="RowCommand" />    
                   
                --%>   <asp:AsyncPostBackTrigger ControlID="cbCfdiRelacionados" EventName="CheckedChanged" /> 
                      
                  
                    </Triggers>
            </asp:UpdatePanel>


        <%---------------Tercera Sección - Conceptos---------------%>

               <asp:UpdatePanel ID="UpdatePanel2" runat="server"  UpdateMode="Conditional"  >
               <ContentTemplate>
                     
        <div class = "card mt-2"> 
            <br />
            <div class = "card-header">
                <b>  Conceptos </b>
            </div>
            <div class = "card-body">
                <div class="row"></div>
                <br />
                 <asp:TabContainer ID="tabContainerPilgrims" runat="server"  Width="100%" ActiveTabIndex="1" CssClass="MyTabStyle">
	    <asp:TabPanel  runat="server"  ID="datosAddenda" HeaderText="Addenda">
           
         <ContentTemplate>
             
             <asp:UpdatePanel ID="UpdatePanel8" runat="server"  UpdateMode="Conditional"  >
            <ContentTemplate>
  
                <div class = "row form-group " > 
                    <div class = "col-lg-1"></div>
                   <div class = "col-lg-3">
                        <asp:Label ID="Label31" runat="server" Text="Proveedor"></asp:Label>
                         <asp:TextBox runat="server" ID="txtProveedor" MaxLength="6" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtProveedor" ForeColor="Red"
                    ErrorMessage="Campo obligatorio" ValidationGroup="AgregarConceptoPilgrims"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator5" runat="server" ForeColor="Red"
                    Operator="DataTypeCheck"  Type="Integer" ControlToValidate="txtProveedor" 
                    ValidationGroup="AgregarConceptoPilgrims" ErrorMessage="Dato inválido"></asp:CompareValidator>
                             
                    </div>
                    <div class = "col-lg-3">
                        <asp:Label ID="Label30" runat="server" Text="Comprador"></asp:Label>
                     <asp:TextBox runat="server" ID="txtComprador" MaxLength="35" CssClass="form-control"></asp:TextBox>
             
                    </div>             
             <div class = "col-lg-3">
                        <asp:Label ID="Label32" runat="server" Text="Proceso"></asp:Label>
                       <asp:DropDownList runat="server" ID="ddlProceso" CssClass="form-control">
                    <Items>
                        <asp:ListItem Value="01" Text="01 - Compras Generales" Selected="True" />
                        <asp:ListItem Value="02" Text="02 - Ingredientes" />
                        <asp:ListItem Value="03" Text="03 - Fletes nacionales" />
                        <asp:ListItem Value="04" Text="04 - Consignación" />
                        <asp:ListItem Value="05" Text="05 - Flete de pollo vivo" />
                        <asp:ListItem Value="06" Text="06 - Combustible" /> 
                        <asp:ListItem Value="07" Text="07 - Gas" />
                        <asp:ListItem Value="08" Text="08 - Importaciones" />
                        <asp:ListItem Value="09" Text="09 - Parvadas" />
                        <asp:ListItem Value="10" Text="10 - Cargos Directos" />
                    </Items>
                </asp:DropDownList>
                
       
             </div>
                   </div>
                 <div class = "row form-group " > 
                      <div class = "col-lg-1"></div>
                  <div class = "col-lg-3">
                        <asp:Label ID="Label33" runat="server" Text="Pedido"></asp:Label>
                    <asp:TextBox runat="server" ID="txtPedidoConcepto" MaxLength="10" 
                    CssClass="form-control"  Width="134px"/>
               </div>
              <div class = "col-lg-3">
                        <asp:Label ID="Label34" runat="server" Text="Posición"></asp:Label>
                       <asp:TextBox runat="server" ID="txtPosicion" MaxLength="2" CssClass="form-control" />
            
           
             </div>
                        <div class = "col-lg-3">
                        <asp:Label ID="Label35" runat="server" Text="Referencia"></asp:Label>
                 <asp:TextBox runat="server" ID="txtReferencia" CssClass="form-control" />
                       <asp:Label ID="Label43" runat="server" Text="(Obligatorio en procesos 01, 04, 05, 07 y 09. OPCIONAL 
                para los procesos restantes)"></asp:Label>
               
        
                        </div>
                      </div>
                    <div class = "row form-group " > 
                  <div class = "col-lg-1"></div>
                  <div class = "col-lg-4">
                        <asp:Label ID="Label36" runat="server" Text="Pedimento"></asp:Label>
             <asp:TextBox runat="server" ID="txtPedimento" MaxLength="15" CssClass="form-control" />
                      <asp:Label ID="Label44" runat="server" Text="(Obligatorio para el proceso 08.)"></asp:Label>
             
                   </div>
                  <div class = "col-lg-4">
                        <asp:Label ID="Label37" runat="server" Text="FacturaPedimento"></asp:Label>
               <asp:TextBox ID="txtFacturaPedimento" runat="server" MaxLength="15" CssClass="form-control"></asp:TextBox>
                        <asp:Label ID="Label38" runat="server" Text="(Obligatorio para el proceso 08.)"></asp:Label>
               
                 </div> 
                  
                  </div>
                  <div class = "row form-group " > 
                  <div class = "col-lg-1"></div>
                  <div class = "col-lg-3">
                        <asp:Button runat="server" ID="Button1" ValidationGroup="AgregarConceptoPilgrims"
                           Cssclass="btn btn-outline-success" Text="Agregar" onclick="btnAgregarPilgrims_Click"/>
               
        
                    </div>
                    
                      </div>
                            
             <br />
             <div style="text-align:center; width:100%">
                    <div class="border border-success" style=" width:80%;   background-color: #2d282808;margin:0px auto  " >
                        <asp:GridView ID="gvPilgrims" runat="server" AutoGenerateColumns="False" GridLines="None" 
                          ShowHeaderWhenEmpty="True" Width="100%"  AlternatingRowStyle-HorizontalAlign="Center"
                            OnRowCommand="gvPilgrims_RowCommand" CssClass="table table-hover table-striped grdViewTable" 
                           >
                            <rowstyle Height="6px" /><alternatingrowstyle  Height="6px"/>
                     <Columns>
            <asp:BoundField HeaderText="Pedido" DataField="Pedido" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Posición" DataField="Posicion" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Referencia" DataField="Referencia"  >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField HeaderText="Pedimento" DataField="Pedimento"  >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField HeaderText="FacturaPedimento" DataField="FacturaPedimento"  >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:ButtonField Text="Eliminar" CommandName="EliminarPilgrims" />
            </Columns>
            
            </asp:GridView>
            </div>
           </div>
                   </ContentTemplate>
                     <Triggers>
                     </Triggers>
             </asp:UpdatePanel>


            </ContentTemplate>
            </asp:TabPanel>

                    <br />
        <asp:TabPanel ID="tabGeneral"  runat="server"  HeaderText="Datos Generales">
        <ContentTemplate>
            <br />
                   <div class = "row"> 
                    <div class = "form-group col-lg-3">
                         <asp:Label ID="Label40" runat="server" ForeColor="Red" Text="* "></asp:Label>
                         <asp:Label ID="lblClaveUnidad" class="control-label" runat="server" Text="Unidad de medida"></asp:Label>
                         <cc1:DropDownListChosen ID="ddlClaveUnidad" runat="server" 
            NoResultsText="No hay resultados coincidentes."    
            DataPlaceHolder="Escriba aquí..." AllowSingleDeselect="True"  CssClass="form-control"
                            AutoPostBack="True"   onselectedindexchanged="ddlClaveUnidad_SelectedIndexChanged" DisableSearchThreshold="10" >                
        </cc1:DropDownListChosen> 
                   
                    </div>
                        <div class = "form-group col-lg-3">
                          <asp:Label ID="Label41" runat="server" ForeColor="Red" Text="* "></asp:Label>
                          <asp:Label ID="lbUnidad" class="control-label" runat="server" Text="Unidad"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txtUnidad" CssClass="form-control"  />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtUnidad" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                   
                   </div>
                    
                      <div class = "form-group col-lg-3">
                       <asp:Label ID="lblNoIdentificacion" class="control-label" runat="server" Text="NoIdentificacion"></asp:Label>
                       <asp:TextBox ID="txtNoIdentificacion" runat="server" CssClass="form-control"  />
                      </div>                                        
                
                    <div class = "form-group col-lg-3">
                          <asp:Label ID="Label42" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblCodigo" class="control-label" runat="server" Text="Clave de producto"></asp:Label>
                        <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" 
                            MaxLength="8"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCodigo" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers"
                       TargetControlID="txtCodigo" Enabled="True" />
                    </div>
                              
                     </div>
                            <div class="row">
                     <div class = "form-group col-lg-3">
                          <asp:Label ID="Label45" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblCantidad" class="control-label" runat="server" Text="Cantidad"></asp:Label>
                        <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="rfvCantidad" runat="server" ControlToValidate="txtCantidad" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtCantidad" ForeColor="Red" Display="Dynamic" ErrorMessage="Dato invalido" 
                        ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="AgregarConcepto" />
                    </div>
                   

                       <div class = "form-group col-lg-3">
                          <asp:Label ID="Label46" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblPrecioUnitario" class="control-label"  runat="server" Text="Precio Unitario"></asp:Label>
                        <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="rfvPrecio" runat="server" ControlToValidate="txtPrecio" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                        <asp:CompareValidator ID="cvPrecio" runat="server" ControlToValidate="txtPrecio" Display="Dynamic" 
                        ErrorMessage="* Dato invalido" ForeColor="Red" Operator="DataTypeCheck" Type="Double" ValidationGroup="AgregarConcepto" />
                    </div>
                       <div class = "form-inline col-lg-3" >
        -                  <asp:CheckBox ID="descuento" runat="server" AutoPostBack="True" OnCheckedChanged="descuento_CheckedChanged"  Text=" % Desc" />
                           <asp:TextBox ID="txtdsc" runat="server" AutoPostBack="True" CssClass="form-control"  OnTextChanged="txtdsc_TextChanged" Width="72px" ></asp:TextBox>
                     
                 </div>
                    <div class = "form-group col-lg-3">
                        <asp:Label ID="lblDescu" class="control-label" runat="server" Text="Descuento"></asp:Label>
                        <asp:TextBox ID="txtDescuento" runat="server" CssClass="form-control"/>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDescuento" Display="Dynamic" 
                        ErrorMessage="* Dato invalido" ForeColor="Red" Operator="DataTypeCheck" Type="Double" ValidationGroup="AgregarConcepto" />
               
                    </div>
                    </div>
                   
                    <div class = "row"> 
                       <div class = "form-group col-lg-4">
                        <asp:Label ID="Label18" class="control-label" runat="server" Text="CuentaPredial"></asp:Label>
                        <asp:TextBox ID="txtCuentaPredial" runat="server" CssClass="form-control"   /> 
                       </div>
              
                     <div class = "form-group col-lg-2 ">
                      <asp:Label ID="lblIVA" class="control-label" runat="server" Text="I.V.A."></asp:Label>
                         <asp:DropDownList runat="server" ID="ddlIVA"    CssClass="form-control">
                          <asp:ListItem Text="No Aplica" Value="-1" ></asp:ListItem>
                             <asp:ListItem Value="0.160000" Text="16%" Selected="True"></asp:ListItem>
                                   <asp:ListItem Value="0.080000" Text="8%"></asp:ListItem>
                           <asp:ListItem Text="0%" Value="0.000000"></asp:ListItem>
                            <asp:ListItem Text="Exento" Value="Exento"></asp:ListItem>
                        </asp:DropDownList>

                    </div>
                      <div class = "form-group col-lg-2 ">
                      <asp:Label ID="Label4" class="control-label" runat="server" Text="Ret ISR"></asp:Label>
                           <asp:DropDownList runat="server" ID="ddlRISR" CssClass="form-control" >
                             <asp:ListItem Text="No Aplica" Value="-1" Selected="True"></asp:ListItem>
                         <asp:ListItem Value="0.100000" Text="0.100000" ></asp:ListItem>
                       
                        </asp:DropDownList>

                          </div>
                      <div class = "form-group col-lg-2 ">
                              <asp:Label ID="Label3" class="control-label" runat="server" Text="Ret IVA"></asp:Label>
                     
                          <asp:DropDownList runat="server" ID="ddlRIVA"  CssClass="form-control" >
                              <asp:ListItem Text="No Aplica" Value="-1" Selected="True"></asp:ListItem>
                         <asp:ListItem Value="0.106666" Text="0.106666" ></asp:ListItem>
                              <asp:ListItem  Value="0.060000" Text="0.060000"></asp:ListItem>
                           <asp:ListItem Text="0.040000" Value="0.040000"></asp:ListItem>
                        </asp:DropDownList>
                   </div>
                    
                </div>  

              <div class = "row"> 
                       <div class = "form-group col-lg-4">
                          <asp:Label ID="Label47" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblDescripcion" class="control-label" runat="server" Text="Descripción"></asp:Label>
                        <asp:TextBox ID="txtDescripcion" Width="100%" runat="server" TextMode="MultiLine" CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                    </div>
                      <div class = "form-group col-lg-4">
                        <asp:Label ID="Label19" class="control-label" runat="server" Text="Observaciones"></asp:Label>
                        <asp:TextBox ID="txtDetalles" Width="100%" runat="server" TextMode="MultiLine" CssClass="form-control"/>
                    </div>
              
              </div>
                <div class="row">
                     <div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
                       <asp:Label ID="Label48" runat="server" ForeColor="Red" Text="Obligatorios (*)"></asp:Label> 
                    
                         </div>
               </div>
                       <div class = "row"> 
                   <div class="col-md-5 col-lg5" ></div>
                       
                        <div class = "col-md-7 col-lg-7 align-self-center">
                         <asp:Button ID="btnAgregar"  runat="server" class="btn btn-outline-success"  Text="Añadir Concepto" 
                        ValidationGroup="AgregarConcepto" OnClick="btnAgregar_Click"/>
                        <asp:Button ID="btnBuscarHistorico" runat="server" class="btn btn-outline-success" 
                                         OnClick="btnBuscarHistorico_Click" Text="BuscarConcepto" />
                        <input type="button" value="BuscadorSAT" onclick="javascript:window.open('http://200.57.3.46:443/PyS/catPyS.aspx','','width=600,height=400,left=50,top=50,toolbar=yes');" class="btn btn-outline-success" />
                       <asp:Button ID="btnBuscarProducto" runat="server" class="btn btn-outline-success"  OnClick="btnBuscarProducto_Click" Text="ClaveProdServ" Width="125px" />
                            </div>

                </div>
             
                 <div class = "row"> 
                   <asp:Panel runat="server" CssClass="table-responsive border border-success" style=" background-color: #2d282808;margin:0px auto ">
                         <asp:GridView ID="gvDetalles" runat="server" AutoGenerateColumns="False" GridLines="None" 
                          ShowHeaderWhenEmpty="True" DataKeyNames="Partida" Width="100%"
                            OnRowCommand="gvDetalles_RowCommand"   CssClass="table table-hover table-striped grdViewTable" OnRowDataBound="gvCfdiRelacionado_RowDataBound">
                            <rowstyle Height="6px" /><alternatingrowstyle  Height="6px" HorizontalAlign="Center"/>
                               <Columns>
                      <asp:BoundField HeaderText="Partida" DataField="Partida" >
                       
                                   <ItemStyle HorizontalAlign="Center" />
                                   </asp:BoundField>
                       
                        <asp:BoundField HeaderText="ClaveProdServ" DataField="Codigo" >
                                   <ItemStyle HorizontalAlign="Center" />
                                   </asp:BoundField>
                        <asp:BoundField HeaderText="NoIdentificacion" DataField="ConceptoNoIdentificacion" >
                                   <ItemStyle HorizontalAlign="Center" />
                                   </asp:BoundField>
                        <asp:BoundField HeaderText="Cantidad" DataField="Cantidad" >
                                   <ItemStyle HorizontalAlign="Center" />
                                   </asp:BoundField>
                        <asp:BoundField HeaderText="ClaveUnidad" DataField="ConceptoClaveUnidad" >
                                   <ItemStyle HorizontalAlign="Center" />
                                   </asp:BoundField>
                        <asp:BoundField HeaderText="Unidad" DataField="Unidad" >
                                   <ItemStyle HorizontalAlign="Center" />
                                   </asp:BoundField>
                        <asp:BoundField HeaderText="ValorUnitario" DataField="Precio" DataFormatString="${0:#,#.######}" >
                                   <ItemStyle HorizontalAlign="Center" />
                                   </asp:BoundField>
                        <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
                        <asp:BoundField HeaderText="Importe" DataField="Total" DataFormatString="${0:#,#.######}" />
                       <asp:BoundField HeaderText="Descuento" DataField="ConceptoDescuento" DataFormatString="${0:#,#.######}" >
                                   <ItemStyle HorizontalAlign="Right" />
                                   </asp:BoundField>
                        <asp:BoundField HeaderText="CuentaPredial" DataField="CuentaPredial" />
                        <asp:BoundField HeaderText="Observaciones" DataField="Observaciones" />
                                   <asp:TemplateField  HeaderText= "Opciones" >
                             <ItemTemplate  >
                                <div class="row-fluid">
                                 <div class="form-inline">
                                  <asp:LinkButton ID="gvlnkEditC" CommandName="Editar" CommandArgument='<%#((GridViewRow)Container).RowIndex%>' CssClass="btn btn-outline-success" runat="server" style=" padding:1px 6px;">
                                    <i class="fa fa-pencil" title="Editar"></i> 
                                        </asp:LinkButton>
                                    &nbsp;
                                      <asp:LinkButton ID="gvlnkDeleteC" CommandName="EliminarConcepto" CommandArgument='<%#((GridViewRow)Container).RowIndex%>' CssClass="btn btn-outline-success" runat="server" style=" padding:1px 6px;" >
                                    <i class="fa fa-trash" title="Eliminar"></i> 
                                        </asp:LinkButton>
                                </div>
                                     </div>
                            </ItemTemplate>
                                       <HeaderStyle CssClass="sorting_disabled" />
                                       <ItemStyle HorizontalAlign="Right" />
                        </asp:TemplateField>
    
                               </Columns>
               </asp:GridView>
                       </asp:Panel> 
                   
                </div>
         
              <br />
             </ContentTemplate>
                   </asp:TabPanel>
</asp:TabContainer>	
                  <asp:HiddenField ID="txtIdProducto" runat="server" />
                                      
                </div>
               </div>  
        <%---------------Cuarta Sección - Impuestos---------------%>

        <div class = "card mt-2">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server"  UpdateMode="Conditional"  >
               <ContentTemplate>
            <div class = "card-header">
                <asp:CheckBox ID="cbImpuestos" runat="server" AutoPostBack="True" oncheckedchanged="cbImpuestos_CheckedChanged" 
                Text="Impuestos" />
            </div>
            <div class ="card-body" id="DivImpuestos" runat="server" >
                <div class ="row">
                    <div class = "form-group col-lg-4">
                        <asp:Label ID="lblAsteriscoTipoImpuesto" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblTipoImpuesto" runat="server" Text="Tipo de Impuesto"></asp:Label> 
                        <asp:DropDownList ID="ddlTipoImpuesto" runat="server"  Height="28px" Width="40%"
                        CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoImpuesto_SelectedIndexChanged">
                            <asp:ListItem Value="Traslados">Traslados</asp:ListItem>
                            <asp:ListItem Value="Retenciones">Retenciones</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class = "form-group col-lg-4">
                        <asp:Label ID="lblAsteriscoBase" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblBase" runat="server" Text="Base"></asp:Label>
                        <asp:TextBox ID="txtBase" runat="server" Enabled="False" CssClass="form-control"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers, Custom" 
                        TargetControlID="txtBase" ValidChars="." />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBase" Display="Dynamic" 
                        ErrorMessage="Requerido" ForeColor="Red" ValidationGroup="AgregarImpuesto"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBase" 
                        Display="Dynamic" ForeColor="Red" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="AgregarImpuesto" />
                    </div>
                    <div class = "form-group col-lg-4">
                        <asp:Label ID="lblAsteriscoTipoFactor" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblTipoFactor" runat="server" Text="Tipo Factor"></asp:Label>
                        <asp:DropDownList ID="ddlTipoFactor" runat="server" Height="28px" Width="40%" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoFactor_SelectedIndexChanged">
                            <asp:ListItem Value="Tasa">Tasa</asp:ListItem>
                            <asp:ListItem Value="Cuota">Cuota</asp:ListItem>
                            <asp:ListItem Value="Exento">Exento</asp:ListItem>
                        </asp:DropDownList>                        
                    </div>
                    
                                                      
                </div>
                <div class = "row">
                     <div class = "form-group col-lg-4 ">
                        <asp:Label ID="lblAsteriscoClaveConcepto" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblClaveConcepto" runat="server" Text="Partida"></asp:Label>
                        <asp:DropDownList ID="ddlConceptos" runat="server"  CssClass="form-control" Height="28px"  Width="40%" AutoPostBack="True" OnSelectedIndexChanged="ddlConceptos_SelectedIndexChanged" >
                        </asp:DropDownList>
                    </div>    

                    <div class = "form-group col-lg-4">
                        <asp:Label ID="lblAsteriscoImpuesto" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblImpuesto" runat="server" Text="Impuesto"></asp:Label>
                        <asp:DropDownList ID="ddlImpuesto" runat="server" Height="28px" Width="40%" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlImpuesto_SelectedIndexChanged" >
                            <asp:ListItem Value="002">IVA</asp:ListItem>
                            <asp:ListItem Value="001">ISR</asp:ListItem>
                            <asp:ListItem Value="003">IEPS</asp:ListItem>
                        </asp:DropDownList>                      
                    </div>
                    <div class = "form-group col-lg-4 ">
                        <asp:Label ID="lblAsteriscoTasa" runat="server" ForeColor="Red" Text="* "></asp:Label>
                        <asp:Label ID="lblTasa" runat="server" Text="Tasa o Cuota"></asp:Label>
                        <asp:TextBox ID="txtTasa" runat="server" class="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTasa" Display="Dynamic" 
                        ErrorMessage="Requerido-" ForeColor="Red" ValidationGroup="AgregarImpuesto"></asp:RequiredFieldValidator>
                        
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" 
                        FilterType="Numbers, Custom" TargetControlID="txtTasa" ValidChars="." />
                        <asp:DropDownList ID="ddlTasaOCuota" runat="server" Height="28px" Width="40%" DataTextField="Maximo" DataValueField="Maximo" CssClass="form-control">
                        </asp:DropDownList>                                                
                    </div>
                </div>
                
             <%--   <asp:Label ID="LblAux" runat="server" ForeColor="Red" Text="*"/>--%>

                <div class = "row">
                    <div class = "col-md-2">
                        <asp:Button ID="btnAgregarImpuesto" runat="server" Cssclass="btn btn-outline-success"  onclick="btnAgregarImpuesto_Click" 
                        Text="Impuesto" ValidationGroup="AgregarImpuesto"/>
                    </div>
                </div>
                <br />
                   <div class = "row"> 
                   <asp:Panel runat="server" CssClass="table-responsive border border-success" style=" background-color: #2d282808;margin:0px auto ">
                         <asp:GridView ID="gvImpuestos" runat="server" AutoGenerateColumns="False" GridLines="None" 
                          ShowHeaderWhenEmpty="True"  Width="100%"  AlternatingRowStyle-HorizontalAlign="Center"
                            OnRowCommand="gvImpuestos_RowCommand"   CssClass="table table-hover table-striped grdViewTable" OnRowDataBound="gvImpuestos_RowDataBound">
                            <rowstyle Height="6px" /><alternatingrowstyle  Height="6px"/>
              
                        <Columns>
                          	<asp:BoundField HeaderText="Partida" DataField="ConceptoClaveProdServ"  ItemStyle-HorizontalAlign="Center" />
          
                            <asp:BoundField DataField="TipoImpuesto" HeaderText="TipoImpuesto" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%" />
                            <asp:BoundField DataField="Base" HeaderText="Base" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="TasaOCuota" HeaderText="TasaOCuota" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Importe" DataFormatString="${0:#,#.######}" HeaderText="Importe" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="TipoFactor" HeaderText="TipoFactor" ItemStyle-HorizontalAlign="Center" />
                         <asp:TemplateField HeaderStyle-CssClass="sorting_disabled"  ItemStyle-Width="10%"   ItemStyle-HorizontalAlign="Right" >
                            <ItemTemplate  >
                                <div class="form-inline" style="text-align:right">
                                      <asp:LinkButton ID="gvlnkDelete" CommandName="deleteRecord" CommandArgument='<%#((GridViewRow)Container).RowIndex%>'  CssClass="btn btn-outline-success" runat="server" style=" padding:1px 6px;">
                                    <i class="fa fa-trash" title="Eliminar"></i> 
                                        </asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>    </Columns>
                    </asp:GridView>     
                          </asp:Panel>
                </div>
            </div>


             
                              <asp:ModalPopupExtender runat="server" ID="mpeSellos" TargetControlID="btnSelloDummy"
        BackgroundCssClass="mpeBack"  PopupControlID="pnlSello" />
    <asp:Panel runat="server" ID="pnlSello" Style="text-align: center;"  CssClass="page7"
        BackColor="#A8CF38" Height="165px" Width="418px">
        <br />
        <asp:Label runat="server" ID="Label14" Text="¡Importante!" Visible="True" class="style161" style="color: #000000"/>
        <br />
        <asp:Label runat="server" ID="LblDiasSello" Text="Su sello caduca en x dias" Visible="True" class="style161" style="color: #000000" Height="50px"/>
        <br />
        <asp:Label runat="server" ID="lblpop" Text="Seleccione otra empresa" Visible="false" class="style161" style="color: #000000"/>
        <br />
        <asp:DropDownList runat="server" ID="ddlEmpresaE" AutoPostBack="false" CssClass="page5"
            DataTextField="RazonSocial" DataValueField="idEmpresa" OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged" Visible="false"/>
        <br />
        <br />
        <asp:Button runat="server" ID="btclose" Text="Aceptar"  class="btn btn-primary"  />
    </asp:Panel>
    <asp:Button runat="server" ID="btnSelloDummy" Style="display: none;" />



                   </ContentTemplate>
                   <Triggers>

                <asp:AsyncPostBackTrigger ControlID="cbImpuestos" EventName="CheckedChanged" /> 
              <asp:AsyncPostBackTrigger ControlID="gvImpuestos" EventName="RowCommand"/>     
               <asp:AsyncPostBackTrigger ControlID="ddlTipoImpuesto" EventName="SelectedIndexChanged" /> 
             
                      
                       
                   <%-- <asp:AsyncPostBackTrigger  ControlID="lnkDelete" EventName="Click" />--%>

                    </Triggers>
                </asp:UpdatePanel>

        </div>

         
                    </ContentTemplate>
                     <Triggers>
                        <%-- <asp:AsyncPostBackTrigger ControlID="gvDetalles"/>  
                         <asp:AsyncPostBackTrigger ControlID="gvDetalles" EventName="RowCommand"/>   
                 --%>
                     </Triggers>
             </asp:UpdatePanel>

        <%-------------------- Quinta Sección - Totales --------------------%>

            <asp:UpdatePanel ID="UpdatePanel4" runat="server"  UpdateMode="Conditional"  >
               <ContentTemplate>
         
        <div class = "card mt-2">
            <div class = "card-header">
                Totales
            </div>
            <div class = "card-body">
                <div class = "row">
                           <div  class="col-md-7 col-sm-0"></div>
                           <div class = "col-md-2 col-sm-6   text-right " style="padding:0"><b> Subtotal:</b> </div>
                           <div class = "d-inline-flex-reverse col-md-2  col-sm-6 text-right " style="padding:0">
                           <asp:Label ID="lblSubtotal" runat="server" /> </div>
                           <div  class="col-md-1 col-sm-0"></div>
                           </div>
               <div class = "row">
                           <div  class="col-md-7 col-sm-0"></div>
                           <div class = "col-md-2 col-sm-6  text-right" style="padding:0"><b>Retenciones:</b></div>
                           <div class = "d-inline-flex-reverse  col-md-2  col-sm-6 text-right" style="padding:0">
                           <asp:Label ID="lblRetenciones" runat="server" /></div>
                           <div  class="col-md-1 col-sm-0"></div>
                           </div>
              <div class = "row">
                           <div  class="col-md-7 col-sm-0"></div>
                           <div class = "col-md-2 col-sm-6 text-right" style="padding:0"><b>Traslados:</b></div>
                           <div class = "d-inline-flex-reverse col-md-2 col-sm-6 text-right" style="padding:0">
                           <asp:Label ID="lblTraslados" runat="server" /></div>
                           <div  class="col-md-1 col-sm-0"></div>
                           </div>
             <div class = "row">
                           <div  class="col-md-7 col-sm-0"></div>
                           <div class = "col-md-2 col-sm-6  text-right" style="padding:0"><b>Descuento:</b></div>
                           <div class = "d-inline-flex-reverse col-md-2 col-sm-6 text-right" style="padding:0">
                           <asp:Label ID="lblDescuento" runat="server" /></div>
                          <div  class="col-md-1 col-sm-0"></div>
                           </div>
             <div class = "row">
                           <div  class="col-md-7 col-sm-0"></div>
                           <div class = "col-md-2 col-sm-6  text-right" style="padding:0"><b>Total</b>:</div>
                           <div class = "d-inline-flex-reverse col-md-2 col-sm-6 text-right" style="padding:0">
                           <asp:Label ID="lblTotal" runat="server" /></div>
                           <div  class="col-md-1 col-sm-0"></div>
                           </div>
                        
                    </div>
                   
                    
                    
                 
                  <div class = "row">
                      <div class="col-lg-7 "></div>
                    <div class = "col-lg-5 justify-content-end">
                        <asp:Button ID="btnLimpiar" runat="server" class= "btn btn-outline-success" Text="Limpiar" OnClick="btnLimpiar_Click"/>
                        &nbsp;&nbsp;&nbsp;
                  <asp:LinkButton ID="BtnVistaPreviaP" CssClass="btn btn-outline-success" OnClientClick="Progress();" Text="Vista Previa" 
                        ValidationGroup="CrearFactura"        OnClick="BtnVistaPreviaP_Click"  runat="server" >
                                  </asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnGenerarFactura" runat="server" class="btn btn-outline-success" Text="Generar" 
                         OnClick="btnGenerarFactura_Click"/>
                        <%--<asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Confirma que deseas generar el comprobante" 
                        TargetControlID="btnGenerarFactura" />--%>
                    </div>
               </div>
            <br />
            </div>
        </div>
              </ContentTemplate>
                <Triggers>
                </Triggers>
             </asp:UpdatePanel>


        <%--------------------Termina formato--------------------%>
        
           <div style=" width:100%" >
           <div style="float:right; text-align:right;">
            </div>
          </div>


            
                </div>
      
              
        </div>
        </section>
    
    <iframe id="MyIframe" runat="server" style="display:none;" ></iframe>
    
        </ContentTemplate>
              <Triggers>

                <asp:AsyncPostBackTrigger  ControlID="btnGenerarFactura" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="ddlMoneda" EventName="SelectedIndexChanged" /> 
                <asp:AsyncPostBackTrigger ControlID="ddlMetodoPago" EventName="SelectedIndexChanged" /> 
                <asp:AsyncPostBackTrigger ControlID="ddlFormaPago" EventName="SelectedIndexChanged" /> 
                <asp:AsyncPostBackTrigger ControlID="ddlStatusFactura" EventName="SelectedIndexChanged" /> 
              
                <asp:AsyncPostBackTrigger ControlID="ddlConceptos" EventName="SelectedIndexChanged" /> 
                <asp:AsyncPostBackTrigger ControlID="ddlTipoFactor" EventName="SelectedIndexChanged" /> 
                <asp:AsyncPostBackTrigger ControlID="ddlImpuesto" EventName="SelectedIndexChanged" /> 
                <asp:AsyncPostBackTrigger ControlID="ddlUsoCFDI" EventName="SelectedIndexChanged" /> 
            <%--    <asp:AsyncPostBackTrigger ControlID="descuento" EventName="CheckedChanged" /> 
                   <asp:AsyncPostBackTrigger ControlID="txtdsc" EventName="TextChanged" /> 
            --%>  
                    </Triggers>
            </asp:UpdatePanel>

         
    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="up1">
<ProgressTemplate>
    <div class="modalUP" >
        <div class="centerUP">
                 
                 <asp:Image ID="Image1" runat="server"  ImageUrl="Imagen/ajax-loader.gif" />
                 <br class="auto-style1" />
                 <span class="auto-style1"><strong>CFDI en proceso .. </strong></span>
        </div>
    </div>
</ProgressTemplate>
</asp:UpdateProgress>


</asp:Content>
