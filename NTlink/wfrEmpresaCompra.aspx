<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrEmpresaCompra.aspx.cs" Inherits="GafLookPaid.wfrEmpresaCompra" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="up1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>

            <%--<link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />    --%>
            <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
      <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />
    
         <script type="text/javascript">

         function cargarFuncion() {
               // nombre de archivo subido
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
             });
              }

               $(document).ready(cargarFuncion);
    </script>

          <script type="text/javascript">
         Sys.WebForms.PageRequestManager.getInstance().add_endRequest(cargarFuncion);
    </script>
 
    
    <section class="services">
        <div class="container">
            <div class="title text-center">
                           
            </div>
                        
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Enviar Comprobante de Pago</h3>
            </div>
            <div class ="card-body" >
    
    <div class = "row">
           <div class = "col-lg-5">
              <asp:Label ID="Label1" runat="server" Text="Cuenta Principal: " Visible="true" 
                                style="font-weight: 700" />
                            <asp:Label ID="LblIdEmpresa" runat="server" Visible="true" />
           </div>
           <div class = "col-lg-3">
                            <asp:Label ID="Label21" runat="server" Text="RFC: " Visible="true"   style="font-weight: 700" />
                            <asp:Label ID="LblRFC" runat="server"  Visible="true  "></asp:Label>
           </div>
           <div class = "col-lg-3">
        
                            <asp:Label ID="Label22" runat="server" Text="Correo:" style="font-weight: 700" ></asp:Label>
                            <asp:Label ID="lblcorreo" runat="server" ></asp:Label>
          </div>
        
        </div>
           <div class = "row">
           <div class = "col-lg-12">
              <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Asesor de ventas: " Visible="true" />
            <asp:Label ID="LblIdPromotor" runat="server" Visible="true" />
            <asp:Label ID="LblIdPromotor0" runat="server" Visible="true" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label23" runat="server" style="font-weight: 700" Text="Correo:"></asp:Label>
            <asp:Label ID="lblcorreo0" runat="server"></asp:Label>
            <asp:Label ID="lblcorreo1" runat="server"></asp:Label>
            </div>
               </div>
                <br /><br />
           <div class = "row">
            <div class = "col-lg-12">
              <h4><asp:Label ID="Label4" runat="server"  Text="Datos del Pago" Visible="true" /></h4>
             </div>
               </div>
                <div class = "row">
            <div class = "col-lg-6">
            <asp:RadioButtonList ID="rbStatus" runat="server" AutoPostBack="true" CssClass="form-control"
                OnSelectedIndexChanged="rbStatus_SelectedIndexChanged" RepeatDirection="Horizontal" Height="34px" Width="204px">
                                            <asp:ListItem Text="Folios" Value="Facturación Completa" />
                                            <asp:ListItem Text="Timbrado" Value="Timbrado" />
                                        </asp:RadioButtonList>
                </div>
                    </div>
                     <div class = "row">
            <div class = "col-lg-3">
               <asp:Label ID="Label5" runat="server" class="control-label" Text="*Paquete"></asp:Label>
                 <asp:DropDownList ID="ddlPaquete" runat="server" AutoPostBack="True" CssClass="form-control" Width="210px">
                                        </asp:DropDownList>
                </div>
                          <div class = "col-lg-3">
           
                                        <asp:RadioButtonList ID="rbcant" runat="server" AutoPostBack="true" 
                                            OnSelectedIndexChanged="rbcant_SelectedIndexChanged"  CssClass="form-control"
                                            RepeatDirection="Horizontal" Visible="False" style="font-weight: 700">
                                            <asp:ListItem Text="Facturación" Value="Facturación" />
                                            <asp:ListItem Text="Nomina" Value="Nómina" />
                                            <asp:ListItem Text="Ambos" Value="Ambos" />
                                        </asp:RadioButtonList>
                              </div>
                            <div class = "col-lg-2 form-group">
           
                                        <asp:Label ID="txtfac" runat="server" Text="Facturación" Visible="False" 
                                            style="font-weight: 700"></asp:Label>
                                        <asp:TextBox ID="cantif" runat="server" CssClass="form-control" Visible="False" 
                                            ></asp:TextBox>
                              </div>
                                <div class = "col-lg-2 form-group">
           
                                        <asp:Label ID="txtnom" runat="server" Text="Nómina" Visible="False" 
                                            style="font-weight: 700"></asp:Label>
                                        <asp:TextBox ID="cantin" runat="server" CssClass="form-control" Visible="False" 
                                            ></asp:TextBox>
                               </div>
                         </div>

                <br />
                     <div class = "row">
            <div class = "col-lg-12">
                                        <h4>Datos Bancarios</h4>
                </div>
                         </div>
                     <div class = "row">
            <div class = "col-lg-3 form-group">
                     <asp:Label ID="Label6" runat="server" class="control-label" Text="*Monto $"></asp:Label>
                      <asp:TextBox ID="txtMonto" runat="server" CssClass="form-control"  />
                <asp:RequiredFieldValidator ID="rfvMonto" runat="server" 
                                                ControlToValidate="txtMonto" Display="Dynamic" ErrorMessage="* Requerido" 
                                                Style="color: #FF0000; font-size: medium;" ValidationGroup="Enviar" />
                                            <asp:CompareValidator ID="cvMonto" runat="server" ControlToValidate="txtMonto" 
                                                Display="Dynamic" ErrorMessage="* Monto no valido" Operator="DataTypeCheck" 
                                                Style="color: #FF0000; font-size: medium;" Type="Double" 
                                                ValidationGroup="Enviar" />
                </div>
            <div class = "col-lg-3 form-group">
                                <asp:Label ID="Label3" runat="server" Text="Tipo de Pago: " Visible="true" />
                                        <asp:DropDownList ID="ddlTipodePago" runat="server" AutoPostBack="True" 
                                                CssClass="form-control" 
                                                OnSelectedIndexChanged="ddlTipodePago_SelectedIndexChanged" Width="150px">
                                                <asp:ListItem runat="server" Text="Seleccionar" Value="00" />
                                                <asp:ListItem runat="server" Text="Deposito" Value="Deposito" />
                                                <asp:ListItem runat="server" Text="Cheque" Value="Cheque" />
                                                <asp:ListItem runat="server" Text="Transferencia" Value="Transferencia" />
                                            </asp:DropDownList>
                </div>
               <div class = "col-lg-4 form-group">
                     <asp:Label ID="Label9" runat="server" class="control-label" Text=" *Referencia"></asp:Label>
                     <asp:TextBox ID="txtReferencia" runat="server" CssClass="form-control" Width="133px" />
                        <asp:RequiredFieldValidator ID="rfvReferencia" runat="server" ControlToValidate="txtReferencia" Display="Dynamic" ErrorMessage="* Requerido" Style="font-size: medium; color: #FF0000;" ValidationGroup="Enviar" />
                             
                     </div>
                         </div>
              <div class = "row">
            <div class = "col-lg-3 form-group">
                     <asp:Label ID="Label12" runat="server" class="control-label" Text="*Fecha de Pago"></asp:Label>
                      <asp:TextBox ID="txtFechaPago" runat="server" CssClass="form-control" />
                                            <asp:CalendarExtender ID="ceFechaInicial" runat="server" Animated="False" 
                                                Format="dd/MM/yyyy" PopupButtonID="txtFechaPago" 
                                                TargetControlID="txtFechaPago" />
                 <asp:RequiredFieldValidator ID="rfvFecha" runat="server" 
                                                ControlToValidate="txtFechaPago" Display="Dynamic" ErrorMessage="* Requerido" 
                                                Style="font-size: medium; color: #FF0000;" ValidationGroup="Enviar" />
                                            <asp:CompareValidator ID="cvFechaInicial" runat="server" 
                                                ControlToValidate="txtFechaPago" Display="Dynamic" 
                                                ErrorMessage="* Fecha Invalida" ForeColor="#FF0000" Operator="DataTypeCheck" 
                                                Type="Date" />
                                      
                      </div>
                  <div class = "col-lg-3 form-group">
                     <asp:Label ID="Label14" runat="server" class="control-label" Text="*Hora: (hh:mm:ss)"></asp:Label>
                      <asp:TextBox ID="txtHora" runat="server" CssClass="form-control"   MaxLength="8" />
                                            <asp:DropDownList ID="ddlHora" runat="server" AutoPostBack="True" CssClass="form-control"
                                                Visible="false" Width="50px">
                                                <asp:ListItem runat="server" Text="a.m." Value="am" />
                                                <asp:ListItem runat="server" Text="p.m." Value="pm" />
                                            </asp:DropDownList>
                       <asp:RequiredFieldValidator ID="rfvHora" runat="server" 
                                                ControlToValidate="txtHora" Display="Dynamic" ErrorMessage="* Requerido" 
                                                Style="font-size: medium; color: #FF0000;" ValidationGroup="Enviar" />
                       </div>
                        <div class = "col-lg-5 form-group">
                     <asp:Label ID="Label15" runat="server" class="control-label" Text="Comentarios"></asp:Label>
                            <asp:TextBox ID="txtDetalles" runat="server" CssClass="form-control"     TextMode="MultiLine" />
                        </div>
                  </div>
              <div class = "row">
                               
         <div class = "form-group col-lg-4">
          <asp:Label ID="Label24" runat="server" class="control-label" Text="Comprobante"></asp:Label>
                    <div class="custom-file" >
                               <asp:FileUpload runat="server" ID="archivoPagos" CssClass="custom-file-input"/>
                             <label class="custom-file-label" for="customFileLang" data-browse="Archivo">Seleccionar Archivo</label>
                        
                            </div>
              <asp:Label ID="Label25" runat="server" class="control-label" Text="(Peso máximo de logo 50 Kb)"></asp:Label>
            
             </div>

                  <div class = "col-lg-3 form-group">
                 <asp:RegularExpressionValidator ID="REGEXFileUploadLogo" runat="server" 
                                                ControlToValidate="archivoPagos" ErrorMessage="Archivo no Admitido"  ForeColor="Red"
                                                ValidationExpression="(.*).(.jpg|.JPG|.gif|.GIF|.jpeg|.JPEG|.bmp|.BMP|.png|.PNG|.pdf|.PDF)$" />
                                            <asp:RequiredFieldValidator ID="archivosPagos" runat="server" 
                                                ControlToValidate="archivoPagos" CssClass="alert-error" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="* Requerido" style="font-size: medium" ValidationGroup="Enviar" />
          
                <asp:Label ID="lblValidacion" runat="server" ForeColor="Red"     Visible="true" />
                      </div>
                  </div>
                    <div class = "row">
            <div class = "col-lg-12">
                                        <h4>Datos para Facturación</h4>
                </div>
                         </div>
                     <div class = "row">
            <div class = "col-lg-12 ">
                  <asp:Label ID="Label17" runat="server" class="control-label" Text="Si desea que se facture a una empresa diferente a la 
                                                 registrada, favor de llenar los sig. datos."></asp:Label>
                  </div>
                         </div>
                <br />
            <div class = "row">
            <div class = "col-lg-4 form-group">
                     <asp:Label ID="Label18" runat="server" class="control-label" Text="*"></asp:Label>
                         <asp:Label ID="Label11" runat="server" class="control-label"  Text="RFC"></asp:Label>
                            <asp:TextBox ID="txtRFC" runat="server" CssClass="form-control" MaxLength="40"  ></asp:TextBox>
                        </div>
            <div class = "col-lg-4 form-group">
                     <asp:Label ID="Label19" runat="server" class="control-label" Text="*"></asp:Label>
                          <asp:Label ID="Label10" runat="server"  Text="Razón Social"></asp:Label>
                            <asp:TextBox ID="txtEmpresa" runat="server" CssClass="form-control"    MaxLength="500" ></asp:TextBox>
                        </div>
                </div>
                  <div class = "row">
            <div class = "col-lg-4 form-group">
                 <asp:Label ID="Label13" runat="server"  Text="Correo"></asp:Label>
                  <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control"  MaxLength="200" ></asp:TextBox>
                </div>
            <div class = "col-lg-4 form-group">
                    <asp:Label ID="Label7" runat="server" Text="Dirección"></asp:Label>
                      <asp:TextBox ID="txtExtension" runat="server" CssClass="form-control" 
                                                 MaxLength="300" TextMode="MultiLine"></asp:TextBox>
                </div>
                      </div>
                              <div class = "row">
            <div class = "col-lg-4 form-group">
                     <asp:Label ID="Label20" runat="server" class="control-label" Text="*"></asp:Label>
                                             <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                                 Font-Size="8pt" style="color: #000" Text="Código Postal"></asp:Label>
                   <asp:TextBox ID="txtCP" runat="server" CssClass="form-control" 
                                                 MaxLength="5"></asp:TextBox>
                  </div>
                                  </div>
                      <div class = "row">
                      <div class = "col-lg-4 form-group">
              
                      <asp:Button ID="btnEnviar" runat="server"  CssClass="btn btn-outline-success"
                          OnClick="btnEnviar_Click" Text="Enviar pago" ValidationGroup="Enviar" Width="146px" />
                                             <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
                                                 ConfirmText="Confirma que deseas enviar el comprobante" TargetControlID="btnEnviar" />
                </div>
                          </div>
                          
                      <div class = "row">
                      <div class = "col-lg-12">
                      <img visible="false" alt="NTLink" src="images/D.jpg" style="height: 100%; width: 100%; margin-bottom: 0px" runat="server" id="img"/>
                        </div>
                          </div>
                                

                <asp:ModalPopupExtender runat="server" ID="mpeCFDIG" TargetControlID="btngenerarDummy"
        BackgroundCssClass="mpeBack"  PopupControlID="pnlMSG" />

    <asp:Panel runat="server" ID="pnlMSG" Style="text-align: center;"  CssClass="page7"
        BackColor="#A8CF38" Height="98px" Width="418px">
        <h1 class="style161" style="color: #000000; text-align:center">
            <strong>Comprobante enviado correctamente</strong></h1>
        <br />
        <%--<asp:Button runat="server" ID="btnSeleccionarConcepto" Text="Seleccionar" onclick="btnSeleccionarConcepto_Click" />&nbsp;&nbsp;--%>
        <asp:Button runat="server" ID="Button1" Text="Aceptar"  class="btn btn-primary" OnClick="Button1_Click" />
    </asp:Panel>
    <asp:Button runat="server" ID="btngenerarDummy" Style="display: none;" />



           
                </div>
         </div>
            </div>
        </section>


            <asp:HiddenField ID="hf_DeleteID" runat="server" />
         
    <asp:Button ID="btnShow" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpex" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
        OkControlID="btnYes" CancelControlID="btnNo" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
            Confirmar
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  Confirma que deseas enviar el comprobante
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
                <asp:PostBackTrigger ControlID="btnEnviar" />
            </Triggers>


 

    </asp:UpdatePanel>

</asp:Content>
