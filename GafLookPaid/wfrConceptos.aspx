<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrConceptos.aspx.cs" Inherits="GafLookPaid.wfrConceptos" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%--<link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />--%>
     <asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
   <%-- <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
   --%>     
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
      <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />
    

    <section class="services">
        <div class="container">
            <div class="title text-center">
            
               
            </div>
          
              
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Conceptos de Facturación de la empresa </h3>
            </div>
            <div class ="card-body" >
                 <div class = "row form-group">
             <div class = "col-lg-12">
      
	<h4><asp:Label runat="server" ID="lblEmpresa"></asp:Label></h4>
        </div>
                     </div>
         <%--        <div class="border border-success" style=" width:100%;   " >
         --%>            
	<div style="width: 100%; overflow: scroll;height: 10%;">
		<asp:HiddenField runat="server" ID="txtIdEmpresa" />
		<asp:GridView runat="server" ID="gvDetalles" AutoGenerateColumns="False" DataKeyNames="IdProducto" 
			  CssClass="table table-hover table-striped grdViewTable" 
            EmptyDataText="No se han dado de alta conceptos" 
			onrowcommand="gvDetalles_RowCommand" >
             <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
                <RowStyle Font-Size="11px" Height="1em"/>
			<Columns>
				<asp:BoundField HeaderText="Unidad" DataField="Unidad" />
				<asp:BoundField HeaderText="N° de identificación" DataField="Codigo" />
				<asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
				<asp:BoundField HeaderText="Observaciones" DataField="Observaciones" />
				<asp:BoundField HeaderText="Precio Unitario" DataField="PrecioP" DataFormatString="{0:F2}" ItemStyle-HorizontalAlign="Right"  />
				<asp:ButtonField Text="Editar" CommandName="Editar" />
			</Columns>
		</asp:GridView>
	</div>


                <br />
                
	<div align="right">
		<asp:Button runat="server" ID="btnNuevoConcepto" Text="Nuevo Concepto"  CssClass="btn btn-outline-success"  
			onclick="btnNuevoConcepto_Click" />
	</div>
	</div>
         </div>
            </div>
        </section>

             <!--mensaje -->
        <asp:ModalPopupExtender ID="mpeBuscarConcepto" runat="server" PopupControlID="pnlBuscarConcepto" 
            TargetControlID="btnConceptoDummy"
         CancelControlID="btnCancelar" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlBuscarConcepto" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Nuevo Concepto
        </div>
        <div class="body">
     
 		<asp:Label runat="server" ID="lblConcepto" Visible="false" ></asp:Label>
		 <div class = "row"> 
            <div class="col-lg-11" >
        	<asp:Label runat="server" ID="Label1" Text="Unidad de Medida" class="control-label"></asp:Label>
	        <asp:TextBox runat="server" ID="txtUnidad" CssClass="form-control"/>
				<asp:RequiredFieldValidator runat="server" ID="rfvNombre" ErrorMessage="* Requerido" Display="Dynamic"
				 ControlToValidate="txtUnidad" ValidationGroup="Concepto" />
				  <asp:HiddenField runat="server" ID="txtIdProducto"/>
            </div>
        </div>
             <div class = "row"> 
            <div class="col-lg-11" >
        	<asp:Label runat="server" ID="Label2" Text="N° de identificación" class="control-label"></asp:Label>
	    	<asp:TextBox runat="server" ID="txtCodigo"  CssClass="form-control"></asp:TextBox>
		    </div>
          </div>
             <div class = "row"> 
            <div class="col-lg-11" >
        	<asp:Label runat="server" ID="Label3" Text="Descripción" class="control-label"></asp:Label>
	    	<asp:TextBox runat="server" ID="txtDescripcion"  CssClass="form-control"></asp:TextBox>
				<asp:RequiredFieldValidator runat="server" ID="rfvLugarExpedicion" ErrorMessage="* Requerido" Display="Dynamic"
				 ControlToValidate="txtDescripcion" ValidationGroup="Concepto" />
			</div>
           </div>
		  <div class = "row"> 
            <div class="col-lg-11" >
        	<asp:Label runat="server" ID="Label4" Text="Observaciones" class="control-label"></asp:Label>
	    	<asp:TextBox runat="server" ID="txtObservaciones"   CssClass="form-control" ></asp:TextBox>
			</div>
          </div>
		 <div class = "row"> 
            <div class="col-lg-11" >
        	<asp:Label runat="server" ID="Label5" Text="Precio Unitario" class="control-label"></asp:Label>
	    	<asp:TextBox runat="server" ID="txtPrecioUnitario"  CssClass="form-control"></asp:TextBox>
				<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="* Requerido" Display="Dynamic"
				 ControlToValidate="txtPrecioUnitario" ValidationGroup="Concepto" />
			</div>
         </div>
            <br />
            <div class = "row"> 
            <div class="col-lg-11" >
        	<div align="right">
		<asp:Button runat="server" ID="btnGuardar" Text="Guardar"  ValidationGroup="Concepto"
			onclick="btnGuardar_Click"  CssClass="btn btn-outline-success"/>&nbsp;&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCancelar" Text="Cancelar"  CssClass="btn btn-outline-success"
			CausesValidation="False" />
	</div>
            </div>
                </div>

            </div>
		<br />
		
	</asp:Panel>
	<asp:Button runat="server" ID="btnConceptoDummy" style="display: none;"  CssClass="btn btn-outline-success" />


        </ContentTemplate>
         </asp:UpdatePanel>

</asp:Content>
