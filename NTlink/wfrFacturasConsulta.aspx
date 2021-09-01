<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Culture="es-MX" UICulture="es-MX" CodeBehind="wfrFacturasConsulta.aspx.cs" Inherits="GafLookPaid.wfrFacturasConsulta" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <link href="Content/bootstrap.min.css" rel="stylesheet" />
     <link href="Content/bootstrap.css" rel="stylesheet" />
     <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />

<style>
        .teamCalendar .ajax__calendar_container
        {
            background-color:cadetblue;
            font-size: 11px;
            color: white;
           

            
        }
    </style>

       <asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
              
    <section class="services">
        <div class="container">
            <div class="title text-center">
            
               
            </div>
              
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Reporte de CFDI</h3>
            </div>
            <div class ="card-body" >
       
  <div class = "row">
   <div class = "col-lg-12">
                 
	<p>
	</p>
       </div>
      </div>
     <div class = "row">
   <div class = "form-group col-lg-12">
  
    <p>
        <a href="https://portalcfdi.facturaelectronica.sat.gob.mx" target="_blank">Sitio de cancelación del SAT</a>
    </p>
       </div>
                    </div>
      <div class = "row">
   <div class = "form-group col-lg-4">
    <asp:Label ID="Label1" runat="server" class="control-label" Text="Empresa"></asp:Label>
         <asp:DropDownList runat="server" ID="ddlEmpresas" AutoPostBack="true" DataTextField="RazonSocial" CssClass="form-control"
		DataValueField="idEmpresa" onselectedindexchanged="ddlEmpresas_SelectedIndexChanged" />      
       </div>
   <div class = "form-group col-lg-4">
    <asp:Label ID="Label2" runat="server" class="control-label" Text="Clientes"></asp:Label>
      <asp:DropDownList runat="server" ID="ddlClientes" AppendDataBoundItems="True" DataTextField="RazonSocial"
			 DataValueField="idCliente" CssClass="form-control" Width= "480px" />
        </div>

          </div>
       <div class = "row">
   <div class = "form-group col-lg-4">
    <asp:Label ID="Label3" runat="server" class="control-label" Text="Fecha Inicial"></asp:Label>
   <asp:TextBox runat="server" ID="txtFechaInicial" CssClass="form-control" />
				<asp:CompareValidator runat="server" ID="cvFechaInicial" ControlToValidate="txtFechaInicial" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaInicial" Animated="False" PopupButtonID="txtFechaInicial" TargetControlID="txtFechaInicial" Format="dd/MM/yyyy" />
		</div>
    <div class = "form-group col-lg-4">
    <asp:Label ID="Label4" runat="server" class="control-label" Text="Fecha Final"></asp:Label>
 	<asp:TextBox runat="server" ID="txtFechaFinal" CssClass="form-control"/>
				<asp:CompareValidator runat="server" ID="cvFechaFinal" ControlToValidate="txtFechaFinal" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaFinal"  
                     PopupButtonID="txtFechaFinal"   TargetControlID="txtFechaFinal" Format="dd/MM/yyyy" />
		</div>
           </div>
                <div class = "row">
   <div class = "form-group col-lg-4">
    <asp:Label ID="Label5" runat="server" class="control-label" Text="Texto (En Observaciones)"></asp:Label>
  <asp:TextBox runat="server" ID="txtTexto" CssClass="form-control" />
	</div>
       <div class = "form-group col-lg-4">
  <br />
       <asp:Button runat="server" ID="btnBuscar" Text="Buscar" 
			 onclick="btnBuscar_Click" CssClass="btn btn-outline-success" />
         </div>

                    </div>
    
                      <div class = "row">
   <div class = "form-group col-lg-6">
    <asp:RadioButtonList RepeatDirection="Horizontal" ID="rbStatus" runat="server" RepeatLayout="Flow"  > 
					<asp:ListItem Text="Todas" Value="Todos" Selected="True" class="radio-inline"/>
					
					<asp:ListItem Text="Pendientes" Value="Pendiente" class="radio-inline"/>
				    <asp:ListItem Text="Pagadas" Value="Pagado"  class="radio-inline"/>
                    <asp:ListItem Text="Canceladas" Value="Cancelado" class="radio-inline"/>
				
				</asp:RadioButtonList>
            </div>
                           <div class = "form-group col-lg-4">
  
			<asp:Button runat="server" ID="btnExportar" Text="Exportar Excel" 
                    onclick="btnExportar_Click" CssClass="btn btn-outline-success"  />
            <asp:Button runat="server"  ID="btnDescargarTodo" 
                    Text="Descargar Seleccionados" OnClick="btnDescargarTodo_OnClick" 
                    CssClass="btn btn-outline-success"  Width="176px"/>

                </div>
                          </div>
		
    <div style="height:100%; overflow-y: scroll;">
        <asp:HiddenField runat="server" ID="hidSel"  Value="t" EnableViewState="true" />
        <asp:GridView ShowFooter="True" runat="server"  CssClass="table table-hover table-striped grdViewTable" 
            ID="gvFacturas" AutoGenerateColumns="False" DataKeyNames="Guid,IdCliente,idventa"
		onrowcommand="gvFacturas_RowCommand" AllowPaging="True" PageSize="10"  Width="100%"
		onpageindexchanging="gvFacturas_PageIndexChanging" 
		onrowdatabound="gvFacturas_RowDataBound">
           <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
           <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
             <RowStyle Font-Size="11px" Height="1em"/>
        
		<PagerSettings Position="Bottom" Visible="true" />
	    <FooterStyle BackColor="#A8CF38"  Font-Bold="True" />
		<Columns>
			<asp:BoundField HeaderText="Folio" DataField="folio" />
			<asp:BoundField HeaderText="Folio Fiscal" DataField="Guid" >
             <FooterStyle HorizontalAlign="Center" Width="20%" Wrap="False" />
                            <HeaderStyle HorizontalAlign="Center" Width="20%" Wrap="False" />
                            <ItemStyle HorizontalAlign="Center" Width="20%" Wrap="False" />
                        </asp:BoundField>
			<asp:BoundField HeaderText="Fecha Emisión" DataField="fecha" DataFormatString="{0:d}" />
			<asp:BoundField HeaderText="Cliente" DataField="Cliente" />
            <asp:BoundField HeaderText="RFC" DataField="Rfc" />
			<asp:BoundField HeaderText="% I.V.A." DataField="PorcentajeIva" DataFormatString="{0:F2}" ItemStyle-HorizontalAlign="Right" />
			<asp:BoundField HeaderText="SubTotal" DataField="Subtotal" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
		<%--	<asp:BoundField HeaderText="I.V.A." DataField="IVA" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Retención I.V.A." DataField="RetIva" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Retención I.S.R." DataField="RetIsr" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="I.E.P.S." DataField="Ieps" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />--%>
            <asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Usuario" DataField="Usuario"/>
			<asp:BoundField HeaderText="Status CFDI" DataField="StatusFactura"/>
            <asp:BoundField HeaderText="Fecha Cancelación" DataField="FechaCancelacion" />
			<asp:ButtonField ButtonType="Link" Text="Pagar" CommandName="Pagar" />
			<asp:ButtonField ButtonType="Link" Text="XML" CommandName="DescargarXml" />
			<asp:ButtonField ButtonType="Link" Text="PDF" CommandName="DescargarPdf" />
			<asp:ButtonField ButtonType="Link" Text="EnviarEmail" CommandName="EnviarEmail" />
            <asp:TemplateField  HeaderText="Cancelar">
                <ItemTemplate>
                    <asp:Button class="btn btn-outline-success"  runat="server" Text='<%# (short)Eval("Cancelado") == 1 ? "Acuse Cancelacion" : "Cancelar"  %>'  CommandName='<%# (short)Eval("Cancelado") == 1 ? "Acuse" : "Cancelar"  %>' ID="btnCancelarf" CommandArgument='<%#Eval("idventa") %>'  />
    <%--                <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="btnCancelarf" ConfirmText="¿Cancelar Documento?" Enabled='<%# (short)Eval("Cancelado") != 1  %>' />
    --%>          
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField  HeaderText="Seleccionar" ItemStyle-HorizontalAlign="Center">
                <HeaderTemplate>
                    <asp:Button class="btn btn-outline-success"  runat="server" ID="btnSelectAll" Text='<%# this.SelText %>' CommandName="SelectAll" />
                </HeaderTemplate>
                <ItemTemplate> 
                     <asp:CheckBox ID="cbChecked" runat="server" Checked='<%# (bool)Eval("Seleccionar") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
		</Columns>
	</asp:GridView> 
    </div>
	
   
	<asp:GridView ID="gvFacturaCustumer"  CssClass="page2" Visible="False" runat="server"
        AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField HeaderText="Folio" DataField="folio" />
			<asp:BoundField HeaderText="Folio Fiscal" DataField="Guid" />
			<asp:BoundField HeaderText="Fecha" DataField="fecha" DataFormatString="{0:d}" />
			<asp:BoundField HeaderText="Cliente" DataField="Cliente" />
            <asp:BoundField HeaderText="RFC" DataField="Rfc" />
			<asp:BoundField HeaderText="% I.V.A." DataField="PorcentajeIva" DataFormatString="{0:F2}" ItemStyle-HorizontalAlign="Right" />
			<asp:BoundField HeaderText="SubTotal" DataField="Subtotal" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
			<%--<asp:BoundField HeaderText="I.V.A." DataField="IVA" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Retención I.V.A." DataField="RetIva" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Retención I.S.R." DataField="RetIsr" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="I.E.P.S." DataField="Ieps" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />--%>

			<asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Usuario" DataField="Usuario"/>
			<asp:BoundField HeaderText="Status" DataField="StatusFactura"/>
        </Columns>
    </asp:GridView>
    <br />

                
           <asp:Button ID="btnShow3" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:Button ID="Button1" runat="server" Style="display:none"  Text="Show Modal Popup" />
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

   
   <asp:HiddenField ID="hf_DeleteID" runat="server" />
         
    <asp:Button ID="btnShow" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpex" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
        OkControlID="btnYes" CancelControlID="btnNo" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Cancelar
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  ¿Cancelar Documento?
        </div>
        <div class="footer" >
                                    
            <asp:Button ID="btnYes" runat="server" Text="Yes" Style="display:none" CssClass="yes" />
                   <asp:LinkButton ID="lnkDelete" CssClass="btn btn-outline-success" OnClick="lnkDelete_Click"  runat="server" >
                            Cancelar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
                        
            <asp:Button ID="btnNo" runat="server" Text="Cancelar"  CssClass="btn btn-outline-success"  />
        </div>
    </asp:Panel>


</ContentTemplate>
           <Triggers>
                     
                     </Triggers>
           
           </asp:UpdatePanel>
      <asp:UpdatePanel ID="UpdatePanel1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>

         <asp:ModalPopupExtender runat="server" ID="mpePagar" TargetControlID="btnpagarDummy"
        BackgroundCssClass="modalBackground" CancelControlID="btnCerrarPagar" PopupControlID="pnlPagar" />
    <asp:Panel runat="server" ID="pnlPagar" CssClass="modalPopup" Style="display: none">
         <div class="header" >
            Pagar Factura
        </div>
    <div class="body">
        <div class="card-body">
                <div class = "row"> 
                    <div class="col-lg-11" >       
                   <asp:Label runat="server" ID="lblIdventa" Visible="False" />
                        </div>
                    </div>
            <div class = "row"> 
                    <div class="col-lg-11" >       
                     <asp:Label runat="server" ID="lblErrorPago" ForeColor="Red" />
                        </div>
                </div>
            <div class = "row"> 
                    <div class="col-lg-11" >       
             <asp:Label runat="server" ID="Label9"  class="control-label" Text="No. de Folio "/>
	    <asp:Label runat="server" ID="lblFolioPago" />
                        </div>
                </div>
		    <div class = "row"> 
                    <div class="col-lg-11" >       
             <asp:Label runat="server" ID="Label10"  class="control-label" Text="Fecha Pago "/>
	    	 <asp:TextBox runat="server" ID="txtFechaPago" Text='<%# DateTime.Now %>' CssClass="form-control"/>
			<asp:CompareValidator runat="server" ID="cvFechaPago" ControlToValidate="txtFechaPago" Display="Dynamic" 
			 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" ValidationGroup="Pago" />
			<asp:CalendarExtender runat="server" ID="ceFechaPago" TargetControlID="txtFechaPago" PopupButtonID="txtFechaPago" Format="dd/MM/yyyy" />
			<asp:RequiredFieldValidator runat="server" ID="rfvFechaPago" ErrorMessage="* Requerido" ControlToValidate="txtFechaPago"
			 ValidationGroup="Pago" Display="Dynamic"/>
                        </div>
                </div>
		<div class = "row"> 
                    <div class="col-lg-11" >       
             <asp:Label runat="server" ID="Label11"  class="control-label" Text="Referencia "/>
	    	<asp:TextBox runat="server" ID="txtReferenciaPago" CssClass="form-control"/>
			<asp:RequiredFieldValidator runat="server" ID="rfvReferenciaPago" ErrorMessage="* Requerido"
			 ControlToValidate="txtReferenciaPago" ValidationGroup="Pago" Display="Dynamic"/>
		</div>
            </div>
            <br />
		<div class = "row"> 
                    <div class="col-lg-11" >       
		<asp:Button runat="server" ID="btnPagar" Text="Pagar" onclick="btnPagar_Click" 
            ValidationGroup="Pago" CssClass="btn btn-outline-success"/>&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCerrarPagar" Text="Cancelar" CssClass="btn btn-outline-success"
            onclick="btnCerrarPagar_Click" />
		</div>
            </div>
</div>
        </div>
        </asp:Panel>



                
   <asp:ModalPopupExtender runat="server" ID="mpeEmail" TargetControlID="btnEmailDummy"
        BackgroundCssClass="modalBackground" CancelControlID="btnCerrarEmail" PopupControlID="pnlEmail" />
    <asp:Panel runat="server" ID="pnlEmail" CssClass="modalPopup" Style="display: none">
         <div class="header" >
            Editar Concepto
        </div>
    <div class="body">
        <div class="card-body">
                <div class = "row"> 
                    <div class="col-lg-11" >       
        <asp:Label runat="server" ID="lblGuid" Visible="False" />
                        </div>
                    </div>
                         <div class = "row">
       <div class = "form-group col-lg-11">
             <asp:Label  class="control-label" ID="Label6" runat="server" Text="Se enviara a"></asp:Label>
           
			 <asp:Label runat="server" ID="lblEmailCliente"  class="control-label"/>
		</div>
                             </div>
        <div class = "row">
       <div class = "form-group col-lg-11">
           <asp:Label  class="control-label" ID="Label7" runat="server" Text="Correos adicionales"></asp:Label>
   			<asp:TextBox runat="server" ID="txtEmails" CssClass="form-control" 
                />
            <asp:Label  ID="Label8" runat="server" Font-Bold="false" Text="Separados por comas"></asp:Label>
   			</div>
            </div>
		<div class = "row">
       <div class = "form-group col-lg-11">
        
		<asp:Button runat="server" ID="btnEnviarEmail" Text="Enviar" onclick="btnEnviarMail_Click" CssClass="btn btn-outline-success"/>&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCerrarEmail" Text="Cancelar" CssClass="btn btn-outline-success"/>
           </div>
            </div>
                    </div>
        </div>
	</asp:Panel>


    <asp:Button runat="server" ID="btnEmailDummy" style="display: none;" class="btn btn-primary"/>
	<asp:Button runat="server" ID="btnPagarDummy" style="display: none;" class="btn btn-primary"/>
    
     





</div>
         </div>
            </div>
        </section>



        </ContentTemplate>
           </asp:UpdatePanel>
</asp:Content>