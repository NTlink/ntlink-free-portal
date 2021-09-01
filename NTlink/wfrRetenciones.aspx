<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrRetenciones.aspx.cs" MaintainScrollPositionOnPostBack="true" Inherits="GafLookPaid.wfrRetenciones"  EnableEventValidation="false" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
   <%@ Register TagPrefix="cc1" Namespace="WebControls.FilteredDropDownList" Assembly="WebControls.FilteredDropDownList" %>
     <%@ Register Assembly="DropDownChosen" Namespace="CustomDropDown" TagPrefix="cc1" %>
<%@ Register Src="~/controles/Intereses.ascx" TagPrefix="uc" TagName="UCIntereses" %>
<%@ Register Src="~/controles/Dividendos.ascx" TagPrefix="uc" TagName="UCDividendos" %>
<%@ Register Src="~/controles/arrendamientoenfideicomiso.ascx" TagPrefix="uc" TagName="UCArrendamientosenfideicomiso" %>
<%@ Register Src="~/controles/EnajenaciondeAcciones.ascx" TagPrefix="uc" TagName="UCEnajenaciondeAcciones" %>
<%@ Register Src="~/controles/FideicomisoNoEmpresarial.ascx" TagPrefix="uc" TagName="UCFideicomisoNoEmpresarial" %>
<%@ Register Src="~/controles/Intereseshipotecarios.ascx" TagPrefix="uc" TagName="UCIntereseshipotecarios" %>
<%@ Register Src="~/controles/Operacionesconderivados.ascx" TagPrefix="uc" TagName="UCOperacionesconderivados" %>
<%@ Register Src="~/controles/Pagoaextranjeros.ascx" TagPrefix="uc" TagName="UCPagoextranjeros" %>
<%@ Register Src="~/controles/Planesderetiro.ascx" TagPrefix="uc" TagName="UCPlanesderetiro" %>
<%@ Register Src="~/controles/Premios.ascx" TagPrefix="uc" TagName="UCPremios" %>
<%@ Register Src="~/controles/SectorFinanciero.ascx" TagPrefix="uc" TagName="UCSectorFinanciero" %>


 <%@ MasterType VirtualPath="~/Site.Master" %>
 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
     <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server" />

    
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
      <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />
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
  </style>

    <%-- ejemplo de modalpopu --%>
       
      <asp:UpdatePanel ID="UpdatePanel7" runat="server"  UpdateMode="Conditional"   >
    <ContentTemplate>
      <asp:HiddenField ID="hf_DeleteID" runat="server" />
        
        

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
                  <asp:Label ID="Label2" class="control-label" runat="server" Text="RFC"></asp:Label>
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


    </ContentTemplate>
           <Triggers>
               
                 </Triggers>
            </asp:UpdatePanel>

     <%-- ejemplo de modalpopu Consultas--%>

        <asp:UpdatePanel ID="UpdatePanel5" runat="server"  UpdateMode="Conditional"   >
    <ContentTemplate>
  
    



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
               <h3> Generar Constancia de Retenciones</h3>
            </div>
            <div class ="card-body" >
                 
                               
                     <asp:UpdatePanel ID="UpdatePanel6" runat="server"  UpdateMode="Conditional"  >
                     <ContentTemplate>
     <div class = "row form-group">
                    <div class="col-lg-6 " >
                           <asp:Label ID="Label3" class="control-label" runat="server" Text="Folio:" ></asp:Label>
                        <asp:Label ID="LabFolio"  class="control-label" runat="server" Text="" ></asp:Label>
                    
                 </div>
         </div>
                <div class = "row form-group"> <%--Empresa--%>
                    <div class="col-lg-6 " >
                        <asp:Label  class="control-label" ID="Label8" runat="server" Text="Empresa"></asp:Label>
                       <asp:DropDownList runat="server" Width="100%" ID="ddlEmpresa" 
                           AutoPostBack="True"  DataTextField="RazonSocial" DataValueField="idEmpresa" 
                           CssClass="form-control"
                           OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged"   />                        
                    </div>
                                        
                    <div class="col-lg-3 " style="color:red;" >
                            <asp:Label ID="lblVencimiento" class="control-label" runat="server" ForeColor="Red" Font-Bold="true" style="color: red; font-size: x-small; text-align: left; font-variant: small-caps;" Width="250px"></asp:Label>
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
                                            
                    
                 </div>
                <div class = "row form-group">
                    
                    <div class = "col-lg-10">
                        <asp:Label  class="control-label" ID="Label18" runat="server" Text="Selecciona clave de retencion"  ></asp:Label>
                   <asp:DropDownList ID="ddlClaveRetencion" runat="server" CssClass="form-control" AppendDataBoundItems="True" />
                               <asp:RequiredFieldValidator ID="rfvClaveRetencion" runat="server"
                                    ControlToValidate="ddlClaveRetencion" Display="Dynamic"
                                    ErrorMessage="* Requerido" ValidationGroup="GeneraRetencion" Style="color: #F72020" />
                            
                        </div>
                              </div>
                    <div class = "row form-group">
                    <div class = "col-lg-12">
                
                           <asp:TextBox runat="server" CssClass="page" TextMode="MultiLine" 
                        ID="txtRazonSocial" Width="341px" Height="35px" Enabled="False" Visible="false" />
                        </div>
                        </div>
                         </ContentTemplate>
                         <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlEmpresa" EventName="SelectedIndexChanged" /> 
                             <asp:AsyncPostBackTrigger ControlID="ddlClientes" EventName="SelectedIndexChanged" />    
                         </Triggers>
                         </asp:UpdatePanel>
               
        </div>  <%--Termina Primera Sección - Generar CFDI--%>


              <asp:UpdatePanel ID="UpdatePanel1" runat="server"  UpdateMode="Conditional"  >
               <ContentTemplate>
         
        <div class = "card mt-2"> 
            <div class = "card-header">
                <b>  Tipo de Retencion </b>
            </div>
            <div class = "card-body">
                    <div class = "col-lg-6">
               
                <asp:CheckBoxList ID="ckeckboxlist1" runat="server" Font-Bold="True"
                                            OnSelectedIndexChanged="ckeckboxlist1_SelectedIndexChanged"
                                                                                        AutoPostBack="True">
                                            <asp:ListItem>Intereses</asp:ListItem>
                                            <asp:ListItem>Dividendos</asp:ListItem>
                                            <asp:ListItem>Arrendamiento en Fideicomiso</asp:ListItem>
                                            <asp:ListItem>Enajenación de Acciones</asp:ListItem>
                                            <asp:ListItem>Fideicomiso NoEmpresarial</asp:ListItem>
                                            <asp:ListItem>Intereses hipotecarios</asp:ListItem>
                                            </asp:CheckBoxList>
               </div>
                        <div class = "col-lg-6">
                      
                   <asp:CheckBoxList ID="ckeckboxlist2" runat="server" Font-Bold="True"
                                            OnSelectedIndexChanged="ckeckboxlist2_SelectedIndexChanged"
                                            AutoPostBack="True">
                                            <asp:ListItem>Operaciones con derivados</asp:ListItem>
                                            <asp:ListItem>Pago extranjeros</asp:ListItem>
                                            <asp:ListItem>Planes de retiro</asp:ListItem>
                                            <asp:ListItem>Premios</asp:ListItem>
                                            <asp:ListItem>Sector Financiero</asp:ListItem>
                                        </asp:CheckBoxList>
                               </div> 
                <br />
                 <div class = "col-lg-12">
               

                <div id="divretenciones" style="width: 100%" runat="server" class="page1">

                            <uc:UCIntereses ID="Intereses" runat="server"></uc:UCIntereses>
                            <uc:UCDividendos ID="dividendos" runat="server"></uc:UCDividendos>
                            <uc:UCArrendamientosenfideicomiso ID="arrendamientoenfideicomiso" runat="server"></uc:UCArrendamientosenfideicomiso>
                            <uc:UCEnajenaciondeAcciones ID="enajenaciondeAcciones" runat="server"></uc:UCEnajenaciondeAcciones>
                            <uc:UCFideicomisoNoEmpresarial ID="fideicomisoNoEmpresarial" runat="server" CssClass="form-control2" />
                            </UCFideicomisoNoEmpresarial>
         <uc:UCIntereseshipotecarios ID="intereseshipotecarios" runat="server" />
                            </UCIntereseshipotecarios>
        <uc:UCOperacionesconderivados ID="operacionesconderivados" runat="server" />
                            </UCOperacionesconderivados>
         <uc:UCPagoextranjeros ID="pagoextranjeros" runat="server" />
                            </UCPagoextranjeros>
         <uc:UCPlanesderetiro ID="planesderetiro" runat="server"  />
                            </UCPlanesderetiro>
         <uc:UCPremios ID="premios" runat="server" />
                            </UCPremios>
         <uc:UCSectorFinanciero ID="sectorFinanciero" runat="server" CssClass="form-control2"/>
                            </UCSectorFinanciero>
                        </div>
                    </div>
            </div>
            </div>
                    </ContentTemplate>
                     <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="ckeckboxlist2" EventName="SelectedIndexChanged" /> 
                         <asp:AsyncPostBackTrigger ControlID="ckeckboxlist1" EventName="SelectedIndexChanged" /> 
                      
                     </Triggers>
             </asp:UpdatePanel>

        <%---------------Tercera Sección - Conceptos---------------%>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server"  UpdateMode="Conditional"  >
               <ContentTemplate>
         
        <div class = "card mt-2"> 
            <div class = "card-header">
                <b>  Datos </b>
            </div>
            <div class = "card-body">
                 <div class = "row form-group " > 
                 
                   <div class = "col-lg-12">
                      <h4> <asp:Label ID="Label31" runat="server" Text="Periodo"></asp:Label> </h4>
                   </div>
                     </div>
                     <div class = "row form-group " > 
                         <div class = "col-lg-1"></div>
                       <div class = "col-lg-3">
                              <asp:Label ID="Label30" runat="server" Text="Mes inicial"></asp:Label> 
                              <asp:DropDownList runat="server" ID="ddlMesInicial" CssClass="form-control">
                                    <Items>
                                        <asp:ListItem Text="" Value="" Selected="True" />
                                        <asp:ListItem Text="Enero" Value="01" />
                                        <asp:ListItem Text="Febrero" Value="02" />
                                        <asp:ListItem Text="Marzo" Value="03" />
                                        <asp:ListItem Text="Abril" Value="04" />
                                        <asp:ListItem Text="Mayo" Value="05" />
                                        <asp:ListItem Text="Junio" Value="06" />
                                        <asp:ListItem Text="Julio" Value="07" />
                                        <asp:ListItem Text="Agosto" Value="08" />
                                        <asp:ListItem Text="Septiembre" Value="09" />
                                        <asp:ListItem Text="Octubre" Value="10" />
                                        <asp:ListItem Text="Noviembre" Value="11" />
                                        <asp:ListItem Text="Diciembre" Value="12" />
                                    </Items>
                                </asp:DropDownList>
                            
                       </div>
                           <div class = "col-lg-3">
                            <asp:Label ID="Label1" runat="server" Text="Mes inicial"></asp:Label> 
                           <asp:DropDownList runat="server" ID="ddlMesFinal" CssClass="form-control">
                                    <Items>
                                        <asp:ListItem Text="" Value="" Selected="True" />
                                        <asp:ListItem Text="Enero" Value="01" />
                                        <asp:ListItem Text="Febrero" Value="02" />
                                        <asp:ListItem Text="Marzo" Value="03" />
                                        <asp:ListItem Text="Abril" Value="04" />
                                        <asp:ListItem Text="Mayo" Value="05" />
                                        <asp:ListItem Text="Junio" Value="06" />
                                        <asp:ListItem Text="Julio" Value="07" />
                                        <asp:ListItem Text="Agosto" Value="08" />
                                        <asp:ListItem Text="Septiembre" Value="09" />
                                        <asp:ListItem Text="Octubre" Value="10" />
                                        <asp:ListItem Text="Noviembre" Value="11" />
                                        <asp:ListItem Text="Diciembre" Value="12" />
                                    </Items>
                                </asp:DropDownList>

                     </div>
                               <div class = "col-lg-3">
                            <asp:Label ID="Label4" runat="server" Text="Ejercicio"></asp:Label> 
                                   <asp:DropDownList runat="server" ID="ddlEjercicio" CssClass="form-control">
                                    <Items>
                                        <asp:ListItem Text="" Value="" Selected="True" />
                                        <asp:ListItem Text="2014" Value="2014" />
                                        <asp:ListItem Text="2015" Value="2015" />
                                        <asp:ListItem Text="2016" Value="2016" />
                                        <asp:ListItem Text="2017" Value="2017" />
                                        <asp:ListItem Text="2018" Value="2018" />
                                        <asp:ListItem Text="2019" Value="2019" />
                                        <asp:ListItem Text="2020" Value="2020" />
                                        <asp:ListItem Text="2021" Value="2021" />
                                        <asp:ListItem Text="2022" Value="2022" />
                                        <asp:ListItem Text="2023" Value="2023" />
                                        <asp:ListItem Text="2024" Value="2024" />
                                    </Items>
                                </asp:DropDownList>
                               </div>
                </div>

                    <div class = "row form-group " > 
                 
                   <div class = "col-lg-12">
                      <h4> <asp:Label ID="Label7" runat="server" Text="Totales"></asp:Label> </h4>
                   </div>
                        </div>
                    <div class = "row form-group " > 
                                     <div class = "col-lg-3"></div>
                            <div class = "col-lg-3">
                            <asp:Label ID="Label9" runat="server" Text="Monto Total Operación"></asp:Label> 
                           <asp:TextBox runat="server" ID="txtMontoTotalOperacion" CssClass="form-control" />
                                   <asp:RequiredFieldValidator runat="server" ID="rfvMontoTotalOperacion" Display="Dynamic"
                                ControlToValidate="txtMontoTotalOperacion" Style="text-align: left; color: #F72020" ErrorMessage="* Requerido" ValidationGroup="GeneraRetencion" />
                            <asp:CompareValidator runat="server" ID="cvMontoTotalOperacion" Display="Dynamic" Style="text-align: left; color: #F72020" ErrorMessage="* Dato invalido"
                                ControlToValidate="txtMontoTotalOperacion" ValidationGroup="GeneraRetencion" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>
                     
                           </div>
                         <div class = "col-lg-3">
                            <asp:Label ID="Label10" runat="server" Text="Monto Total Gravado"></asp:Label> 
                                <asp:TextBox runat="server" ID="txtMontoTotalGravado" CssClass="form-control" />
                               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" Display="Dynamic"
                                ControlToValidate="txtMontoTotalGravado" Style="text-align: left; color: #F72020" ErrorMessage="* Requerido"
                                ValidationGroup="GeneraRetencion" />
                            <asp:CompareValidator runat="server" ID="cvMontoTotalGravado" Display="Dynamic" Style="text-align: left; color: #F72020" ErrorMessage="* Dato invalido"
                                ControlToValidate="txtMontoTotalGravado" ValidationGroup="GeneraRetencion"
                                Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>
                        
                           </div>
                     </div>
                 <div class = "row form-group " > 
                                     <div class = "col-lg-3"></div>
                            <div class = "col-lg-3">
                            <asp:Label ID="Label11" runat="server" Text="Monto Total Retenciones"></asp:Label> 
                          <asp:TextBox runat="server" ID="txtMontoTotalRetenciones" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" Display="Dynamic"
                                ControlToValidate="txtMontoTotalRetenciones" Style="text-align: left; color: #F72020" ErrorMessage="* Requerido" ValidationGroup="GeneraRetencion" />
                            <asp:CompareValidator runat="server" ID="cvMontoTotalRetenciones" Display="Dynamic" Style="text-align: left; color: #F72020" ErrorMessage="* Dato invalido"
                                ControlToValidate="txtMontoTotalRetenciones" ValidationGroup="GeneraRetencion" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>
                                        
                           </div>
                         <div class = "col-lg-3">
                            <asp:Label ID="Label12" runat="server" Text="Monto Total Exento"></asp:Label> 
                          <asp:TextBox runat="server" ID="txtMontoTotalExento" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvMontoTotalExento" Display="Dynamic"
                                ControlToValidate="txtMontoTotalExento" Style="text-align: left; color: #F72020" ErrorMessage="* Requerido" ValidationGroup="GeneraRetencion" />
                            <asp:CompareValidator runat="server" ID="cvMontoTotalExento" Display="Dynamic" Style="text-align: left; color: #F72020" ErrorMessage="* Dato invalido"
                                ControlToValidate="txtMontoTotalExento" ValidationGroup="GeneraRetencion" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>
                                           
                           </div>
                     </div>

                <div class = "row form-group " > 
                 
                   <div class = "col-lg-12">
                      <h4> <asp:Label ID="Label13" runat="server" Text="Agregar Retenciones Totales"></asp:Label> </h4>
                   </div>
                        </div>
                   <div class = "row form-group " > 
                            <div class = "col-lg-3">
                            <asp:Label ID="Label14" runat="server" Text="Base"></asp:Label> 
                               <asp:TextBox runat="server" ID="txtBaseRetField" CssClass="form-control"/>
                                 <asp:RequiredFieldValidator runat="server" ID="rfvBaseRetField" Style="color: #F72020" ErrorMessage="* Requrido" Display="Dynamic"
                                            ControlToValidate="txtBaseRetField" ValidationGroup="Item"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator runat="server" ID="cvBaseRetField" Display="Dynamic" Style="color: #F72020" ErrorMessage="* Dato invalido"
                                            ControlToValidate="txtBaseRetField" ValidationGroup="Item" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>
                                   

                            </div>
                        <div class = "col-lg-3">
                            <asp:Label ID="Label15" runat="server" Text="Impuesto"></asp:Label> 
                                 <asp:DropDownList runat="server" ID="ddlImpuestoField"  CssClass="form-control"/>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvImpuestosField" Style="color: #F72020" ErrorMessage="* Requerido" Display="Dynamic"
                                            ControlToValidate="ddlImpuestoField" ValidationGroup="Item"></asp:RequiredFieldValidator>
                                    
                        </div>
                       <div class = "col-lg-3">
                            <asp:Label ID="Label16" runat="server" Text="Monto"></asp:Label> 
                               <asp:TextBox runat="server" ID="txtMontoRetField"  CssClass="form-control"/>
                                      <asp:RequiredFieldValidator runat="server" ID="rfvMontoRetField" Style="color: #F72020" ErrorMessage="* Requerido" Display="Dynamic"
                                            ControlToValidate="txtMontoRetField" ValidationGroup="Item"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator runat="server" ID="cvMontoRetField" Display="Dynamic" Style="color: #F72020" ErrorMessage="* Dato invalido"
                                            ControlToValidate="txtMontoRetField" ValidationGroup="Item" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>
                                    
                        </div>
                        <div class = "col-lg-3">
                            <asp:Label ID="Label17" runat="server" Text="Tipo Pago"></asp:Label> 
                                    <asp:DropDownList runat="server" ID="ddlTipoPagoRetField"  CssClass="form-control"/>
                                     <asp:RequiredFieldValidator runat="server" ID="rfvTipoPagoField" Style="color: #F72020" ErrorMessage="* Requerido" Display="Dynamic"
                                            ControlToValidate="ddlTipoPagoRetField" ValidationGroup="Item"></asp:RequiredFieldValidator>
                              
                        </div>
                      
                       </div>

                <div class = "row form-group " > 
                            <div class = "col-lg-3">
                   </div>
                            <div class = "col-lg-3">
                                      <asp:Button runat="server" ID="btnAgregar" Text="Agregar" 
                                          OnClick="btnAgregar_Click" ValidationGroup="Item" class="btn btn-outline-success"  />
                                  
                   </div>
                  </div>
                <div style="text-align:center; width:100%">
                    <div class="border border-success" style=" width:80%;   background-color: #2d282808;margin:0px auto  " >
                        <asp:GridView ID="gvRetenciones" runat="server" AutoGenerateColumns="False" GridLines="None" 
                          ShowHeaderWhenEmpty="True" DataKeyNames="ID" Width="100%"  AlternatingRowStyle-HorizontalAlign="Center"
                           OnRowCommand="gvRetenciones_RowCommand"
                            CssClass="table table-hover table-striped grdViewTable"
                            >
                            <rowstyle Height="6px" /><alternatingrowstyle  Height="6px"/>
                                          <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>Base</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblBaseRetField" Text='<%# Eval("baseRetField") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>Impuesto</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblImpuestoField" Text='<%# Eval("impuestoField") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>Monto</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblMontoRetField" Text='<%# Eval("montoRetField") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>Tipo Pago</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblTipoPagoRetField" Text='<%# Eval("tipoPagoRetField") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" ID="btnEliminar" CommandName="DeleteRetItem"
                                                    CommandArgument='<%# ((GridViewRow) Container).RowIndex %>'>Eliminar
                                                </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                    </div>

               </div>  <%--Termina panel-body--%>
      
        </div>  <%--Termina Tercera Sección - Conceptos--%>
            
        <%---------------Cuarta Sección - Impuestos---------------%>
                                <asp:ModalPopupExtender runat="server" ID="mpeSellos" TargetControlID="btnSelloDummy"
        BackgroundCssClass="mpeBack"  PopupControlID="pnlSello" />
    <asp:Panel runat="server" ID="pnlSello" Style="text-align: center;"  CssClass="page7"
        BackColor="#A8CF38" Height="165px" Width="418px">
        <br />
        <asp:Label runat="server" ID="Label19" Text="¡Importante!" Visible="True" class="style161" style="color: #000000"/>
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
                     </Triggers>
             </asp:UpdatePanel>

        <%-------------------- Quinta Sección - Totales --------------------%>

            <asp:UpdatePanel ID="UpdatePanel4" runat="server"  UpdateMode="Conditional"  >
               <ContentTemplate>
         
        <div class = "card mt-2">
            <div class = "card-header">
                Operaciones
            </div>
            <div class = "card-body">
                    
                 
                  <div class = "row">
                      <div class="col-lg-7 "></div>
                    <div class = "col-lg-5 justify-content-end">
                        <asp:Button ID="btnLimpiar" runat="server" class= "btn btn-outline-success" Text="Limpiar" OnClick="btnLimpiar_Click"/>
                        &nbsp;&nbsp;&nbsp;
                      <asp:LinkButton ID="BtnVistaPreviaP" CssClass="btn btn-outline-success" OnClientClick="Progress();" Text="Vista Previa" 
                        ValidationGroup="GeneraRetencion"        OnClick="btnGenerarVistaP_Click"  runat="server" >
                                  </asp:LinkButton>
        
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnGenerarRetencion" runat="server" class="btn btn-outline-success" Text="Generar Retenciones" 
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

                        <asp:AsyncPostBackTrigger  ControlID="btnGenerarRetencion" EventName="Click" />
                  
                  
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
