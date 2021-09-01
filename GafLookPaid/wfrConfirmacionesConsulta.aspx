<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrConfirmacionesConsulta.aspx.cs" Inherits="GafLookPaid.wfrConfirmacionesConsulta" %>
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
               <h3>Reporte de CONFIRMACIONES</h3>
            </div>
            <div class ="card-body" >
       
  <div class = "row">
   <div class = "col-lg-12">
   
		<asp:Label runat="server" ID="lblError" ForeColor="Red" />
	</div>
      </div>
     <div class = "row">
   <div class = "col-lg-6">
    <asp:Label ID="Label1" runat="server" class="control-label" Text="Empresa"></asp:Label>
   <asp:DropDownList runat="server" ID="ddlEmpresas" AutoPostBack="true" DataTextField="RazonSocial"
       CssClass="form-control"
		DataValueField="idEmpresa" onselectedindexchanged="ddlEmpresas_SelectedIndexChanged" />
	</div>
         </div>
    <div class = "row">
   <div class = "col-lg-6">
    <asp:Label ID="Label2" runat="server" class="control-label" Text="Clientes"></asp:Label>
     <asp:DropDownList runat="server" ID="ddlClientes" AppendDataBoundItems="True" DataTextField="RazonSocial"
			 DataValueField="idCliente" CssClass="form-control"  />
       </div>
        </div>
            <div class = "row">
           <div class = "col-lg-6">
    <asp:Button runat="server" ID="btnBuscar" Text="Buscar"  CssClass="btn btn-outline-success"	
        onclick="btnBuscar_Click" />
               </div>
		</div>
		
    
        <asp:HiddenField runat="server" ID="hidSel" Value="Sel"/>
  
       <div style="height:100%; overflow-y: scroll;">
          <asp:GridView ShowFooter="True" runat="server" ID="gvFacturas" 
            AutoGenerateColumns="False" DataKeyNames="IdTimbre,Folio,RfcReceptor"
		onrowcommand="gvFacturas_RowCommand" AllowPaging="True" PageSize="9" CssClass="table table-hover table-striped grdViewTable" 
		onpageindexchanging="gvFacturas_PageIndexChanging" 
		onrowdatabound="gvFacturas_RowDataBound" style="text-align: center">
		<PagerSettings Position="Bottom" Visible="true" />
	    <FooterStyle BackColor="GreenYellow" Font-Bold="True" />
         <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
            <RowStyle Font-Size="11px" Height="1em"/>
        
		<Columns>
        	
            <asp:BoundField HeaderText="Folio" DataField="Folio" />
			<asp:BoundField HeaderText="Timbrado" DataField="procesado" />
            <asp:BoundField HeaderText="Código de Confirmación" DataField="Confirmacion" />
			<asp:BoundField HeaderText="Fecha Emisión" DataField="FechaFactura" DataFormatString="{0:d}" />
			<asp:BoundField HeaderText="RfcReceptor" DataField="RfcReceptor" />
            <asp:BoundField HeaderText="RfcEmisor" DataField="RfcEmisor" />
            <asp:BoundField HeaderText="Error" DataField="Error" />
	     
	      <asp:TemplateField  HeaderText="Confirmar">
               <ItemTemplate>
                    <asp:Button class="btn btn-outline-success"	   runat="server" Text="Confirmar"  CommandName="Confirmar" ID="btnCancelarf" CommandArgument='<%#Eval("IdTimbre") %>' Visible='<%# ProcessMyDataItem(Eval("Confirmacion")) == ""  %>' />
                    <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="btnCancelarf" ConfirmText="¿Confirmar Documento?" Enabled='<%#ProcessMyDataItem( Eval("Confirmacion")) == ""  %>' />
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
	</asp:GridView> 
    </div>
	
                </div>
         </div>
            </div>
        </section>
        </ContentTemplate>
           </asp:UpdatePanel>
   
    <br />
   
	<asp:ModalPopupExtender runat="server" ID="mpePagar" TargetControlID="btnpagarDummy" BackgroundCssClass="mpeBack"
	 CancelControlID="btnCerrarPagar" PopupControlID="pnlPagar"/>

	<asp:ModalPopupExtender runat="server" ID="mpeEmail" TargetControlID="btnEmailDummy" BackgroundCssClass="mpeBack"
	 CancelControlID="btnCerrarEmail" PopupControlID="pnlEmail" />
	<asp:Button runat="server" ID="btnEmailDummy" style="display: none;" class="btn btn-primary"/>
	<asp:Button runat="server" ID="btnPagarDummy" style="display: none;" class="btn btn-primary"/>
</asp:Content>