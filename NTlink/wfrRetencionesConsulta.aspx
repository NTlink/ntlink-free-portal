<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrRetencionesConsulta.aspx.cs"
    Inherits="GafLookPaid.wfrRetencionesConsulta" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%--<link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />--%>


      <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
      <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />
    
    
<asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
   
    <section class="services">
        <div class="container">
            <div class="title text-center">
                           
            </div>
                        
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Reporte de Retenciones</h3>
            </div>
            <div class ="card-body" >
    
    <div class = "row">
   <div class = "col-lg-6">
   	
		
   </div>
      </div>
    <div class = "row">
   <div class = "form-group col-lg-6">
     <asp:Label ID="Label1" runat="server" class="control-label" Text="Empresa"></asp:Label>
      <asp:DropDownList runat="server" ID="ddlEmpresas" AutoPostBack="true" DataTextField="RazonSocial"
		DataValueField="idEmpresa" onselectedindexchanged="ddlEmpresas_SelectedIndexChanged" CssClass="form-control" />
       </div>
</div>
   <div class = "row">
   <div class = "form-group col-lg-3">
     <asp:Label ID="Label2" runat="server" class="control-label" Text="Fecha Inicial"></asp:Label>
    	<asp:TextBox runat="server" ID="txtFechaInicial"  CssClass="form-control" />
				<asp:CompareValidator runat="server" ID="cvFechaInicial" ControlToValidate="txtFechaInicial" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaInicial" Animated="False" PopupButtonID="txtFechaInicial" TargetControlID="txtFechaInicial" Format="dd/MM/yyyy" />
		</div>
        <div class = "form-group col-lg-3">
       <asp:Label ID="Label3" runat="server" class="control-label" Text="Fecha Final"></asp:Label>
    	<asp:TextBox runat="server" ID="txtFechaFinal" CssClass="form-control"/>
				<asp:CompareValidator runat="server" ID="cvFechaFinal" ControlToValidate="txtFechaFinal" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaFinal" Animated="False" PopupButtonID="txtFechaFinal" TargetControlID="txtFechaFinal" Format="dd/MM/yyyy" />
		</div>
       </div>
    <div class = "row">
   <div class = "form-group col-lg-6">
     <asp:Label ID="Label4" runat="server" class="control-label" Text="Clientes"></asp:Label>
     <asp:DropDownList runat="server" ID="ddlClientes" AppendDataBoundItems="True" DataTextField="RazonSocial"
			 DataValueField="idCliente"  CssClass="form-control" /></td>
	</div>
        </div>
      
                <div class = "row">
   <div class = "col-lg-12">
 
   <asp:Button runat="server" ID="btnBuscar" Text="Buscar" CssClass="btn btn-outline-success" onclick="btnBuscar_Click" />
			<asp:Button runat="server" ID="btnExportar" Text="Exportar Excel" onclick="btnExportar_Click" 
                CssClass="btn btn-outline-success"/>
           <asp:Button runat="server" ID="btnDescargarTodo" Text="Descargar Seleccionados" CssClass="btn btn-outline-success"
                    OnClick="btnDescargarTodo_OnClick" Enabled="False" Visible="False" />
       </div>
             </div>

                  <asp:HiddenField runat="server" ID="hidSel" Value="Sel"/>
       <div style="height:100%; overflow-y: scroll;">
        <asp:GridView ShowFooter="True" runat="server" ID="gvFacturas" CssClass="table table-hover table-striped grdViewTable" 
            AutoGenerateColumns="False" DataKeyNames="Id,Folio,idCliente"
		onrowcommand="gvFacturas_RowCommand" AllowPaging="True" PageSize="9" Width="95%"
		onpageindexchanging="gvFacturas_PageIndexChanging" 
		onrowdatabound="gvFacturas_RowDataBound" style="text-align: center">
		<PagerSettings Position="Bottom" Visible="true" />
	    <FooterStyle BackColor="GreenYellow" Font-Bold="True" />
                  <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
                <RowStyle Font-Size="11px" Height="1em"/>
       
		<Columns>
        	
         <asp:BoundField HeaderText="Folio" DataField="Folio" />
			<asp:BoundField HeaderText="Folio Fiscal" DataField="Guid" >
            <FooterStyle HorizontalAlign="Center" Width="20%" Wrap="False" />
                            <HeaderStyle HorizontalAlign="Center" Width="20%" Wrap="False" />
                            <ItemStyle HorizontalAlign="Center" Width="20%" Wrap="False" />
                        </asp:BoundField>
			<asp:BoundField HeaderText="Fecha Emisión" DataField="FechaFactura" DataFormatString="{0:d}" />
			<asp:BoundField HeaderText="Cliente" DataField="Cliente" />
            <asp:BoundField HeaderText="RFC" DataField="Rfc" />
			<asp:ButtonField ButtonType="Link" Text="XML" CommandName="DescargarXml" />
			<asp:ButtonField ButtonType="Link" Text="PDF" CommandName="DescargarPdf" />
			<asp:ButtonField ButtonType="Link" Text="Enviar Email" CommandName="EnviarEmail" />
            <asp:TemplateField  HeaderText="Cancelar">
                <ItemTemplate>
                    <asp:Button CssClass="btn btn-outline-success" runat="server" Text='<%# (string)Eval("Status") == "Cancelada" ? "Acuse Cancelacion" : "Cancelar"  %>'  CommandName='<%# (string)Eval("Status") == "Cancelada" ? "Acuse" : "Cancelar"  %>' ID="btnCancelarf" CommandArgument='<%#Eval("Id") %>' />
             <%--       <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="btnCancelarf" ConfirmText="¿Cancelar Documento?" Enabled='<%# (string)Eval("Status") != "Cancelada" %>' />
           --%>     </ItemTemplate>
            </asp:TemplateField>
           
		</Columns>
	</asp:GridView> 
   
   </div>
	<asp:GridView ID="gvFacturaCustumer" Visible="False" runat="server" AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField HeaderText="Folio" DataField="folio" />
			<asp:BoundField HeaderText="Folio Fiscal" DataField="Guid" />
			<asp:BoundField HeaderText="Fecha" DataField="FechaFactura" DataFormatString="{0:d}" />
			<asp:BoundField HeaderText="Cliente" DataField="Cliente" />
         
        </Columns>
    </asp:GridView>
    
                <br />
   
    </div>
         </div>
</div>
        </section>

        
	<asp:ModalPopupExtender runat="server" ID="mpePagar" TargetControlID="btnpagarDummy" BackgroundCssClass="mpeBack"
	 CancelControlID="btnCerrarPagar" PopupControlID="pnlPagar"/>
	<asp:Panel runat="server" ID="pnlPagar" BackColor="White" Width="600px" style="text-align: center;">
		<h1>Pagar Factura</h1>
		<asp:Label runat="server" ID="lblIdventa" Visible="False" />
		<asp:Label runat="server" ID="lblErrorPago" ForeColor="Red" />
	    No. de Folio: <asp:Label runat="server" ID="lblFolioPago" />
		<p>
			Fecha Pago: <asp:TextBox runat="server" ID="txtFechaPago" Text='<%# DateTime.Now %>' />
			<asp:CompareValidator runat="server" ID="cvFechaPago" ControlToValidate="txtFechaPago" Display="Dynamic" 
			 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" ValidationGroup="Pago" />
			<asp:CalendarExtender runat="server" ID="ceFechaPago" TargetControlID="txtFechaPago" PopupButtonID="txtFechaPago" Format="dd/MM/yyyy" />
			<asp:RequiredFieldValidator runat="server" ID="rfvFechaPago" ErrorMessage="* Requerido" ControlToValidate="txtFechaPago"
			 ValidationGroup="Pago" Display="Dynamic"/>
		</p>
		<p>
			Referencia: <asp:TextBox runat="server" ID="txtReferenciaPago" Width="300px" />
			<asp:RequiredFieldValidator runat="server" ID="rfvReferenciaPago" ErrorMessage="* Requerido"
			 ControlToValidate="txtReferenciaPago" ValidationGroup="Pago" Display="Dynamic"/>
		</p>
		<asp:Button runat="server" ID="btnPagar" Text="Pagar" onclick="btnPagar_Click" ValidationGroup="Pago" class="btn btn-primary"/>&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCerrarPagar" Text="Cancelar" class="btn btn-primary"
            onclick="btnCerrarPagar_Click" />
		<br /><br />
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
                        <asp:Label ID="lblRFCEmpresa" runat="server" Visible="False" />
		
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
          &nbsp;&nbsp;  <asp:Label runat="server" ID="lblError" ForeColor="Red" />
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
    </asp:UpdatePanel>
</asp:Content>