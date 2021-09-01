<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CFDI.aspx.cs" Inherits="gratuito.CFDI" MaintainScrollPositionOnPostBack="true" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

        
       

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      
    

     <script type="text/javascript">
        function getConfirmation(sender, title, message) {
            $("#spnTitle").text(title);
            $("#spnMsg").text(message);
            $('#modalPopUp').modal('show');
            $('#btnConfirm').attr('onclick', "$('#modalPopUp').modal('hide');setTimeout(function(){" + $(sender).prop('href') + "}, 50);");
            return false;
         }



    </script>
    

        <asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
         
    <section class="services">
        <div class="container">
            <div class="title text-center">
            
               
            </div>
          
              
     <div  class = "card mt-2">   
            <div class="card-header">
                Generar CFDI
            </div>
            <div class ="card-body" >
                

                <div class = "row"> <%--Cliente--%>
                    <div class = "form-group col-lg-6">
                        <asp:Label  class="control-label" ID="lblCliente" runat="server" Text="Cliente"></asp:Label>
                       <asp:DropDownList runat="server" Height="28px" Width="100%" ID="ddlClientes" DataTextField="RazonSocial" DataValueField="idCliente" CssClass="form-control input-sm"   />                        
                    </div>

                    
                </div>  <%--Termina Cliente--%>
                <div class = "row form-group " > 
                   
                    <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="lblFolio" runat="server" Text="Folio" ></asp:Label>
                        <asp:TextBox ID="txtFolio" runat="server" CssClass="form-control" />
                       
                    </div>
                    <div class="col-lg-3" >
                        <asp:Label  class="control-label" ID="Label1" runat="server" Text="Serie" ></asp:Label>
                        <asp:TextBox ID="txtSerie" runat="server"  CssClass="form-control"/>
                    </div>


                                      
                  <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="lblTipoDocumento" runat="server" Text="Tipo de Comprobante"></asp:Label>
                        <asp:DropDownList ID="ddlTipoComprobante" runat="server" Height="28px"   CssClass="form-control">
                            <asp:ListItem runat="server" Selected="True" Text="Ingreso" Value="I" />
                            <asp:ListItem runat="server" Text="Egreso" Value="E" />
                      </asp:DropDownList>
                    </div>

                     <div class="col-lg-3 " >
                        <asp:Label  class="control-label" ID="lblFormaPago" runat="server" Text="Forma de Pago"></asp:Label>
                        <asp:DropDownList ID="ddlFormaPago"  Width="90%" Height="28px" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlFormaPago_SelectedIndexChanged" 
                             
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
                            <asp:ListItem runat="server" Text="Por definir" Value="99"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                        
                  </div>
              
              
                <div class = "row"> <%--Moneda/TipoCambio--%>
                     <div class = "form-group col-lg-3">
                        <asp:Label ID="lblMetodoPago" class="control-label" runat="server" Text="Método de Pago"></asp:Label>
                        <asp:DropDownList ID="ddlMetodoPago" Height="28px" Width="95%"  runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlMetodoPago_SelectedIndexChanged" 
                        >
                            <asp:ListItem runat="server" Text="Pago en una sola exhibición" Value="PUE"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Pago en parcialidades o diferido" Value="PPD"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class = "form-group col-lg-3">
                           <asp:Label ID="Label7" class="control-label" runat="server" Text="CondicionesPago"></asp:Label>
           
                    <asp:TextBox ID="txtCondicionesPago" runat="server"         CssClass="form-control" ></asp:TextBox>
                        </div>
                    <div class = "form-group col-lg-3">
                        <asp:Label ID="lblMoneda" class="control-label" runat="server" Text="Moneda"></asp:Label>
           
                        <asp:DropDownList ID="ddlMoneda" Height="28px" runat="server"   AppendDataBoundItems="True" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlMoneda_SelectedIndexChanged">              
                      
                        </asp:DropDownList>
                    </div>
                    <div class = "form-group col-lg-3">
                        <asp:Label ID="lblTipoCambio" class="control-label" runat="server" Text="Tipo de Cambio" Visible="false"></asp:Label>
                        <asp:TextBox ID="txtTipoCambio" runat="server" Visible="false" CssClass="form-control"/>
                    </div>
                </div>  <%--Termina Moneda/TipoCambio--%>
                

              
            </div>  <%--Termina panel-body--%>
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
                    <div  style=" width:80%;  background-color: #2d282808;margin:0px auto " >
                        <asp:GridView ID="gvCfdiRelacionado" runat="server" AutoGenerateColumns="False" GridLines="None" 
                          ShowHeaderWhenEmpty="True" DataKeyNames="ID" Width="100%" OnRowCommand="gvCfdiRelacionado_RowCommand"    CssClass="table table-hover table-striped grdViewTable">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="UUID" HeaderText="UUID" ItemStyle-HorizontalAlign="Center" />
                              
                            
                            <asp:TemplateField HeaderStyle-CssClass="sorting_disabled"  ItemStyle-Width="10%"   ItemStyle-HorizontalAlign="Right" >
                            <ItemTemplate  >
                                <div class="form-inline" style="text-align:right">
                                      <asp:LinkButton ID="gvlnkDelete" CommandName="deleteRecord" CommandArgument='<%#((GridViewRow)Container).RowIndex%>' CssClass="btn btn-outline-warning" runat="server">
                                    <i class="fa fa-trash" title="Eliminar"></i> 
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

                    <asp:AsyncPostBackTrigger ControlID="gvCfdiRelacionado" EventName="RowCommand"/>     
                   <asp:AsyncPostBackTrigger ControlID="cbCfdiRelacionados" EventName="CheckedChanged" /> 
                       
                  
                   <%-- <asp:AsyncPostBackTrigger  ControlID="lnkDelete" EventName="Click" />--%>

                    </Triggers>
            </asp:UpdatePanel>


        <%---------------Tercera Sección - Conceptos---------------%>

        <div class = "card mt-2"> 
            <div class = "card-header">
                Conceptos
            </div>
            <div class = "card-body">

               
     
                <div class = "row"> <%--Clave Unidad/No. Identificación--%>
                    <div class = "form-group col-lg-3">
                        <asp:Label ID="lblClaveUnidad" class="control-label" runat="server" Text="Unidad de medida"></asp:Label>
                        <asp:DropDownList ID="ddlClaveUnidad" Height="28px" runat="server"   AppendDataBoundItems="True" CssClass="form-control"  OnSelectedIndexChanged="ddlMoneda_SelectedIndexChanged">              
                       </asp:DropDownList>
                   
                    </div>
                   <div class = "form-group col-lg-3">
          <%--                   <asp:Label ID="lbCuentaPredial" class="control-label" runat="server" Text="CuentaPredial"></asp:Label>
                             <asp:TextBox ID="txtCuentaPredial" runat="server" CssClass="form-control2" />
         --%>           
                          <asp:Label ID="lbUnidad" class="control-label" runat="server" Text="Unidad"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txtUnidad" CssClass="form-control"  />
                 
                   </div>
                    
                      <div class = "form-group col-lg-3">
                       <asp:Label ID="lblNoIdentificacion" class="control-label" runat="server" Text="NoIdentificacion"></asp:Label>
                       <asp:TextBox ID="txtNoIdentificacion" runat="server" CssClass="form-control"  />
                      </div>                                        
                
                    <div class = "form-group col-lg-3">
                        <asp:Label ID="lblCodigo" class="control-label" runat="server" Text="Clave de producto"></asp:Label>
                        <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" 
                            MaxLength="8"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCodigo" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers"
                       TargetControlID="txtCodigo" />
                    </div>
                   
                
               </div>
                <div class="row">
                     <div class = "form-group col-lg-3">
                        <asp:Label ID="lblCantidad" class="control-label" runat="server" Text="Cantidad"></asp:Label>
                        <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="rfvCantidad" runat="server" ControlToValidate="txtCantidad" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtCantidad" ForeColor="Red" Display="Dynamic" ErrorMessage="Dato invalido" 
                        ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="AgregarConcepto" />
                    </div>
                   

                       <div class = "form-group col-lg-3">
                        <asp:Label ID="lblPrecioUnitario" class="control-label"  runat="server" Text="Precio Unitario"></asp:Label>
                        <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="rfvPrecio" runat="server" ControlToValidate="txtPrecio" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                        <asp:CompareValidator ID="cvPrecio" runat="server" ControlToValidate="txtPrecio" Display="Dynamic" 
                        ErrorMessage="* Dato invalido" ForeColor="Red" Operator="DataTypeCheck" Type="Double" ValidationGroup="AgregarConcepto" />
                    </div>

                    <div class = "form-group col-lg-3">
                        <asp:Label ID="lblDescu" class="control-label" runat="server" Text="Descuento"></asp:Label>
                        <asp:TextBox ID="txtDescuento" runat="server" CssClass="form-control"/>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDescuento" Display="Dynamic" 
                        ErrorMessage="* Dato invalido" ForeColor="Red" Operator="DataTypeCheck" Type="Double" ValidationGroup="AgregarConcepto" />
               
                    </div>
                   
                        <div class = "col-md-3 col-lg-3 align-self-center">
                        <input type="button" value="BuscadorSAT" onclick="javascript:window.open('http://200.57.3.46:443/PyS/catPyS.aspx','','width=600,height=400,left=50,top=50,toolbar=yes');" class="btn btn-outline-success" />
                    </div>

                </div>  
                <div class = "row"> 
                       <div class = "form-group col-lg-4">
                        <asp:Label ID="lblDescripcion" class="control-label" runat="server" Text="Descripción"></asp:Label>
                        <asp:TextBox ID="txtDescripcion" Width="100%" runat="server" TextMode="MultiLine" CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" Display="Dynamic" 
                        ErrorMessage="* Requerido" ForeColor="Red" ValidationGroup="AgregarConcepto" />
                    </div>
                          
                     <div class = "form-group col-lg-2 ">
                      <asp:Label ID="lblIVA" class="control-label" runat="server" Text="I.V.A."></asp:Label>
                         <asp:DropDownList runat="server" ID="ddlIVA" Height="28px"   CssClass="form-control">
                          <asp:ListItem runat="server" Text="No Aplica" Value="-1" Selected="True"></asp:ListItem>
                             <asp:ListItem runat="server" Value="0.160000" Text="16%" ></asp:ListItem>
                                   <asp:ListItem runat="server" Value="0.080000" Text="8%"></asp:ListItem>
                           <asp:ListItem runat="server" Text="0%" Value="0.000000"></asp:ListItem>
                            <asp:ListItem runat="server" Text="Exento" Value="Exento"></asp:ListItem>
                        </asp:DropDownList>

                    </div>
                      <div class = "form-group col-lg-2 ">
                      <asp:Label ID="Label4" class="control-label" runat="server" Text="Ret ISR"></asp:Label>
                           <asp:DropDownList runat="server" ID="ddlRISR" Height="28px"  CssClass="form-control" >
                             <asp:ListItem runat="server" Text="No Aplica" Value="-1" Selected="True"></asp:ListItem>
                         <asp:ListItem runat="server" Value="0.100000" Text="0.100000" ></asp:ListItem>
                       
                        </asp:DropDownList>

                          </div>
                      <div class = "form-group col-lg-2 ">
                              <asp:Label ID="Label3" class="control-label" runat="server" Text="Ret IVA"></asp:Label>
                     
                          <asp:DropDownList runat="server" ID="ddlRIVA" Height="28px"  CssClass="form-control" >
                              <asp:ListItem runat="server" Text="No Aplica" Value="-1" Selected="True"></asp:ListItem>
                         <asp:ListItem runat="server" Value="0.106666" Text="0.106666" ></asp:ListItem>
                           <asp:ListItem runat="server" Text="0.040000" Value="0.040000"></asp:ListItem>
                        </asp:DropDownList>
                   </div>
                    <div class = "col-lg-3">
                        <asp:Button ID="btnAgregar"  runat="server" class="btn btn-outline-success"  Text="Añadir Concepto" 
                        ValidationGroup="AgregarConcepto" OnClick="btnAgregar_Click"/>
                    </div>
                    
                </div>  <%--Termina Descripción/Botón Agregar/ Botón Buscar--%>
<br />                
                 <div class = "row"> 
                  <div class="form-group col-lg-12"  style=" background-color: #2d282808;">
                   <asp:Panel runat="server" CssClass="table-responsive">
          
                    <asp:GridView ID="gvDetalles" runat="server" AutoGenerateColumns="False" GridLines="None"
                        HorizontalAlign="Center"  CssClass="table table-hover table-striped grdViewTable" OnRowCommand="gvDetalles_RowCommand"
                         ShowHeaderWhenEmpty="True">
                        <Columns>
                            <asp:BoundField HeaderText="Partida" DataField="Partida" ItemStyle-HorizontalAlign="Center" />
                      
                            <asp:BoundField DataField="ConceptoClaveProdServ" HeaderText="ClaveProdServ" 
                                ItemStyle-HorizontalAlign="Center" />
                          <asp:BoundField DataField="ConceptoNoIdentificacion" 
                                HeaderText="NoIdentificacion" ItemStyle-HorizontalAlign="Center" />
                          <asp:BoundField DataField="ConceptoCantidad" HeaderText="Cantidad" 
                                ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="ConceptoClaveUnidad" HeaderText="ClaveUnidad" 
                                ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="ConceptoUnidad" HeaderText="Unidad" 
                                ItemStyle-HorizontalAlign="Center" />
                              <asp:BoundField DataField="ConceptoValorUnitario" DataFormatString="{0:C}" 
                                HeaderText="ValorUnitario" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="ConceptoDescripcion" HeaderText="Descripción" />
                            <asp:BoundField DataField="ConceptoImporte" DataFormatString="{0:C}" 
                                HeaderText="Importe" />
                            <asp:BoundField DataField="ConceptoDescuento" DataFormatString="{0:C}" 
                                HeaderText="Descuento" ItemStyle-HorizontalAlign="Right" />
                                   <asp:TemplateField HeaderStyle-CssClass="sorting_disabled"   ItemStyle-HorizontalAlign="Right" >
                             <ItemTemplate  >
                                <div class="form-inline" style="text-align:right">
                                      <asp:LinkButton ID="gvlnkDelete" CommandName="deleteRecord" CommandArgument='<%#((GridViewRow)Container).RowIndex%>' CssClass="btn btn-outline-warning" runat="server">
                                    <i class="fa fa-trash" title="Eliminar"></i> 
                                        </asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                       </asp:Panel>
                </div>
                     </div>

                   <!-- Modal Delete -->
                <div class="modal fade" id="deleteModalConcepto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title  text-center" id="H2">
                                    <asp:Label ID="Label5" runat="server" Text="Eliminar Registro"></asp:Label>
                                </h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              
                            </div>
                             <div class="modal-body">
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                    <ContentTemplate>
                                          <asp:HiddenField ID="HiddenField1" runat="server" />
                                          <h5 class="danger">¿Desea eliminar el registro?</h5>
                                    </ContentTemplate>
                                </asp:UpdatePanel>            
                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton ID="bntEliminarConcepto" CssClass="btn btn-outline-warning"  runat="server" OnClick="bntEliminarConcepto_Click">
                            Emiminar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
                                <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->


                 

            </div>  <%--Termina panel-body--%>

        </div>  <%--Termina Tercera Sección - Conceptos--%>

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
                        ErrorMessage="Requerido" ForeColor="Red" ValidationGroup="AgregarImpuesto"></asp:RequiredFieldValidator>
                        
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" 
                        FilterType="Numbers, Custom" TargetControlID="txtTasa" ValidChars="." />
                        <asp:DropDownList ID="ddlTasaOCuota" runat="server" Height="28px" Width="40%" DataTextField="Maximo" DataValueField="Maximo" CssClass="form-control">
                        </asp:DropDownList>                                                
                    </div>
                </div>
                <div class = "row">
                    <div class = "col-md-2">
                        <asp:Button ID="btnAgregarImpuesto" runat="server" Cssclass="btn btn-outline-success"  onclick="btnAgregarImpuesto_Click" 
                        Text="Impuesto" ValidationGroup="AgregarImpuesto"/>
                    </div>
                </div>
                <br />
                <div id="TablaImpuestos" runat="server" class = "row justify-content-center">
                      <asp:Panel runat="server" CssClass="table-responsive">
          
                    <asp:GridView ID="gvImpuestos" runat="server" AutoGenerateColumns="False"  GridLines="None" OnRowCommand="gvImpuestos_RowCommand"
                        CssClass="table table-hover table-striped grdViewTable" ShowHeaderWhenEmpty="True" Width="100%">
                        <Columns>
                          	<asp:BoundField HeaderText="Partida" DataField="ConceptoClaveProdServ"  ItemStyle-HorizontalAlign="Center" />
          
                            <asp:BoundField DataField="TipoImpuesto" HeaderText="TipoImpuesto" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%" />
                            <asp:BoundField DataField="Base" HeaderText="Base" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="TasaOCuota" HeaderText="TasaOCuota" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Importe" DataFormatString="{0:C}" HeaderText="Importe" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="TipoFactor" HeaderText="TipoFactor" ItemStyle-HorizontalAlign="Center" />
                         <asp:TemplateField HeaderStyle-CssClass="sorting_disabled"  ItemStyle-Width="10%"   ItemStyle-HorizontalAlign="Right" >
                            <ItemTemplate  >
                                <div class="form-inline" style="text-align:right">
                                      <asp:LinkButton ID="gvlnkDelete" CommandName="deleteRecord" CommandArgument='<%#((GridViewRow)Container).RowIndex%>' CssClass="btn btn-outline-warning" runat="server">
                                    <i class="fa fa-trash" title="Eliminar"></i> 
                                        </asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>    </Columns>
                    </asp:GridView>     
                          </asp:Panel>
                </div>
            </div>


                      <!-- Modal Delete -->
                <div class="modal fade" id="deleteModalImpuesto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title  text-center" id="H2">
                                    <asp:Label ID="Label6" runat="server" Text="Eliminar Registro"></asp:Label>
                                </h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              
                            </div>
                             <div class="modal-body">
                                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                    <ContentTemplate>
                                          <asp:HiddenField ID="HiddenField2" runat="server" />
                                          <h5 class="danger">¿Desea eliminar el registro?</h5>
                                    </ContentTemplate>
                                </asp:UpdatePanel>            
                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton ID="bntEliminarImpuesto" CssClass="btn btn-outline-warning"  runat="server" OnClick="bntEliminarImpuesto_Click">
                            Emiminar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
                                <button type="button" class="btn btn-outline-warning" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->




                   </ContentTemplate>
                   <Triggers>

                <asp:AsyncPostBackTrigger ControlID="cbImpuestos" EventName="CheckedChanged" /> 
              <asp:AsyncPostBackTrigger ControlID="gvImpuestos" EventName="RowCommand"/>     
               <asp:AsyncPostBackTrigger ControlID="ddlTipoImpuesto" EventName="SelectedIndexChanged" /> 
               <asp:AsyncPostBackTrigger ControlID="ddlConceptos" EventName="SelectedIndexChanged" /> 
               <asp:AsyncPostBackTrigger ControlID="ddlTipoFactor" EventName="SelectedIndexChanged" /> 
               <asp:AsyncPostBackTrigger ControlID="ddlImpuesto" EventName="SelectedIndexChanged" /> 
                      
                      
                       
                   <%-- <asp:AsyncPostBackTrigger  ControlID="lnkDelete" EventName="Click" />--%>

                    </Triggers>
                </asp:UpdatePanel>

        </div>

         
        <%-------------------- Quinta Sección - Totales --------------------%>

        <div class = "card mt-2">
            <div class = "card-header">
                Totales
            </div>
            <div class = "card-body">
                <div class = "row">
                    <div class = "col-lg-2">
                        <table style="width:100%">
                            <tr>
                                <td class="text-right">
                        Subtotal:</td>
                                <td>
                        <asp:Label ID="lblSubtotal" runat="server" />
                           </td>
                                </tr>
                            <tr><td class="text-right">Retenciones:</td>
                                <td>
                        <asp:Label ID="lblRetenciones" runat="server" />
                                    </td>
                                </tr>
                            <tr>
                                <td class="text-right">
                        Traslados:</td>
                                <td>
                            <asp:Label ID="lblTraslados" runat="server" />
                              </td>
                    </tr>
                            <tr>
                                <td class="text-right">
                        Descuento:</td>
                                <td>
                        <asp:Label ID="lblDescuento" runat="server" />
                                    </td>
                                </tr>
                            <tr><td class="text-right">
                         Total:</td>
                                <td>
                        <asp:Label ID="lblTotal" runat="server" />
                                    </td>
                                </tr>
                                    </table>
                    
                    </div>
                    <div class = "col-lg-10">
                    </div>
                    </div>
                    <div class = "col-lg-12 mt-3">
                        <asp:Button ID="btnLimpiar" runat="server" class= "btn btn-outline-success" Text="Limpiar" OnClick="btnLimpiar_Click"/>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnVistaPrevia" runat="server" class="btn btn-outline-success"  Text="Vista Previa" 
                        ValidationGroup="CrearFactura" OnClick="BtnVistaPrevia_Click"/>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnGenerarFactura" runat="server" class="btn btn-outline-success" Text="Generar" 
                         OnClick="btnGenerarFactura_Click"/>
                        <%--<asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Confirma que deseas generar el comprobante" 
                        TargetControlID="btnGenerarFactura" />--%>
                    </div>
               
            </div>
        </div>
   

        <%--------------------Termina formato--------------------%>
        
           <div style=" width:100%" >
           <div style="float:right; text-align:right;">
            <asp:Label ID="lblError" runat="server" ForeColor="Red" />
            </div>
          </div>

         <%--<div>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server"
                AssociatedUpdatePanelID="up1">
                <ProgressTemplate>
                    <div id="Background">
                    </div>
                    <div id="Progress">
                        <br/>
                        <br/>
                        <br/>
                        <br>
                        </br>
                        CFDI en proceso ..
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            </div>--%>
   
            
                </div>
      
        
            <%--Bootstrap Modal Dialog--%>
               <div id="modalPopUp" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">
                                <span id="spnTitle">
                                </span>
                            </h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            
                        </div>
                        <div class="modal-body">
                            <p>
                                <span id="spnMsg">
                                </span>                                .
                            </p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-warning" data-dismiss="modal">Close</button>
                            <button type="button" id="btnConfirm" class="btn btn-outline-warning">
                             
                        </div>
                    </div>
</div>
             </div>

         <%-- <asp:LinkButton ID="lnkDelete2" runat="server" CssClass="btn btn-outline-danger btn-lg" OnClientClick="return getConfirmation(this, 'Please confirm','Are you sure you want to delete?');"  
              OnClick="lnkDelete2_Click"><i></i>&nbsp;Delete</asp:LinkButton>          <br />--%>
                
              </section>

              
                <!-- Modal Delete -->
                <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title  text-center" id="H2">
                                    <asp:Label ID="Label2" runat="server" Text="Eliminar Registro"></asp:Label>
                                </h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              
                            </div>
                             <div class="modal-body">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                          <asp:HiddenField ID="hf_DeleteID" runat="server" />
                                          <h5 class="danger">¿Desea eliminar el registro?</h5>
                                    </ContentTemplate>
                                </asp:UpdatePanel>            
                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton ID="lnkDelete" CssClass="btn btn-outline-warning"  runat="server" OnClick="lnkDelete_Click">
                            Emiminar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
                                <button type="button" class="btn btn-outline-warning" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

        <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog" runat="server" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
           <h4 class="modal-title">Mensaje</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
      </div>
      <div class="modal-body">
      <%--  <p>Resutado</p>
      --%>    <asp:Label ID="labSalida" runat="server" Text=""></asp:Label>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-warning" data-dismiss="modal">Cerrar</button>
      </div>
    </div>

  </div>
    </div>         
             
    
        </ContentTemplate>
              <Triggers>

                        <asp:AsyncPostBackTrigger  ControlID="btnGenerarFactura" EventName="Click" />
                  <asp:PostBackTrigger  ControlID="BtnVistaPrevia" />
                      <asp:AsyncPostBackTrigger ControlID="ddlMoneda" EventName="SelectedIndexChanged" /> 
                      <asp:AsyncPostBackTrigger ControlID="ddlMetodoPago" EventName="SelectedIndexChanged" /> 
                      <asp:AsyncPostBackTrigger ControlID="ddlFormaPago" EventName="SelectedIndexChanged" /> 
                        
                  
                 <%-- <asp:AsyncPostBackTrigger ControlID="cbCfdiRelacionados" EventName="CheckedChanged" /> 
              <asp:AsyncPostBackTrigger ControlID="gvCfdiRelacionado" EventName="RowCommand"/>     
             --%>                    
                   <%-- <asp:AsyncPostBackTrigger  ControlID="lnkDelete" EventName="Click" />--%>

                    </Triggers>
            </asp:UpdatePanel>

         
</asp:Content>
