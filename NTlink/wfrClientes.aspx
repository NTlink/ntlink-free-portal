<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrClientes.aspx.cs" Inherits="GafLookPaid.wfrClientes" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <%-- <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />    
   --%>
          <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
     <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />

  <asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
    
        <div class="container">
            <div class="title text-center">
            
               
            </div>
          
              
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Cliente</h3>
            </div>
            <div class ="card-body" >
       <div class = "row">
       <div class = "form-group col-lg-6">
       <asp:Label ID="Label1" runat="server" class="control-label" Text="Empresa Emisora"></asp:Label>
            <asp:DropDownList runat="server" ID="ddlEmpresa" AppendDataBoundItems="true"
                DataTextField="RazonSocial" 
                    DataValueField="IdEmpresa" CssClass="form-control"  />
    </div>
           <div class = "form-group col-lg-3">
       <%--<asp:Label runat="server" ID="lblError" ForeColor="Red" />
      --%>  </div>
           </div>
       <div class = "row">
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label2" runat="server" class="control-label" Text="RFC"></asp:Label>
     <asp:TextBox runat="server" ID="txtRFC" CssClass="form-control"/>
         </div>  
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label3" runat="server" class="control-label" Text="CURP"></asp:Label>
          <asp:TextBox ID="txtCurp" runat="server" CssClass="form-control"></asp:TextBox>
      </div>
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label4" runat="server" class="control-label" Text="Nacionalidad"></asp:Label>
        <asp:DropDownList runat="server" ID="ddlNacionalidad" CssClass="form-control"  >
                    <asp:ListItem>Mexicana</asp:ListItem>
                    <asp:ListItem>Extranjero</asp:ListItem>
                </asp:DropDownList>
         </div>
           <div class = "form-group col-lg-3">
       <asp:Label ID="Label5" runat="server" class="control-label" Text="NumRegIdTrib"></asp:Label>
        <asp:TextBox ID="txtNumRegIdTrib" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
           </div>
     <div class = "row">
       <div class = "form-group col-lg-6">
       <asp:Label ID="Label6" runat="server" class="control-label" Text="Razón Social"></asp:Label>
        <asp:TextBox runat="server" ID="txtRazonSocial" 
                    CssClass="form-control" /></td>
        </div>
         </div>
     <div class = "row">
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label7" runat="server" class="control-label" Text="Calle"></asp:Label>
        <asp:TextBox runat="server" ID="txtDireccion" CssClass="form-control" />
           </div>
          <div class = "form-group col-lg-3">
       <asp:Label ID="Label8" runat="server" class="control-label" Text="No Exterior"></asp:Label>
      <asp:TextBox runat="server" ID="txtExt" CssClass="form-control" />
              </div>
        <div class = "form-group col-lg-3">
       <asp:Label ID="Label9" runat="server" class="control-label" Text="No Interior"></asp:Label>
        <asp:TextBox runat="server" ID="txtInt" CssClass="form-control" />
            </div>
         </div>
      <div class = "row">
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label10" runat="server" class="control-label" Text="Colonia"></asp:Label>
     <asp:TextBox runat="server" ID="txtColonia" CssClass="form-control" />
           </div>
           <div class = "form-group col-lg-3">
       <asp:Label ID="Label11" runat="server" class="control-label" Text="Municipio"></asp:Label>
     <asp:TextBox runat="server" ID="txtMunicipio" CssClass="form-control" />
               </div>
            <div class = "form-group col-lg-3">
       <asp:Label ID="Label12" runat="server" class="control-label" Text="Localidad"></asp:Label>
     <asp:TextBox runat="server" ID="txtLocalidad" CssClass="form-control" />
                </div>
          </div>
      <div class = "row">
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label13" runat="server" class="control-label" Text="Referencia"></asp:Label>
    <asp:TextBox runat="server" ID="txtReferencia" CssClass="form-control"/>
       </div>
        <div class = "form-group col-lg-3">
       <asp:Label ID="Label14" runat="server" class="control-label" Text="Estado"></asp:Label>
    <asp:TextBox runat="server" ID="txtEstado" CssClass="form-control" />
            </div>
             <div class = "form-group col-lg-3">
       <asp:Label ID="Label15" runat="server" class="control-label" Text="País"></asp:Label>
    <asp:TextBox runat="server" ID="txtPais" CssClass="form-control" >México</asp:TextBox>
                 </div>
          </div>

       <div class = "row">
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label16" runat="server" class="control-label" Text="CP"></asp:Label>
    <asp:TextBox runat="server" ID="txtCP" CssClass="form-control" MaxLength="5" />
           </div>
             <div class = "form-group col-lg-3">
       <asp:Label ID="Label17" runat="server" class="control-label" Text="Teléfono"></asp:Label>
      <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control" />
                 </div>
           </div>
     <div class = "row">
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label18" runat="server" class="control-label" Text="Email"></asp:Label>
       <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
           </div>
         <div class = "form-group col-lg-3">
       <asp:Label ID="Label19" runat="server" class="control-label" Text="Bcc"></asp:Label>
       <asp:TextBox runat="server" ID="txtBcc" CssClass="form-control" />
             </div>
         </div>
                <div class = "row">
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label20" runat="server" class="control-label" Text="Web"></asp:Label>
     <asp:TextBox runat="server" ID="txtWeb" CssClass="form-control" />
           </div>
      <div class = "form-group col-lg-3">
      <asp:Label ID="Label21" runat="server" class="control-label" Text="Contacto"></asp:Label>
      <asp:TextBox runat="server" ID="txtContacto" CssClass="form-control" />
          </div>
                    </div>
                <div class = "row">
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label22" runat="server" class="control-label" Text="Días Revisión"></asp:Label>
         <asp:TextBox runat="server" ID="txtDiasRevision" CssClass="form-control" />
                <asp:CompareValidator runat="server" ID="cvDiasRevision" ControlToValidate="txtDiasRevision" Display="Dynamic"
                 ErrorMessage="* Dato Invalido" Type="Integer" Operator="DataTypeCheck" />
           </div>
          <div class = "form-group col-lg-3">
       <asp:Label ID="Label23" runat="server" class="control-label" Text="Cta. Contable"></asp:Label>
    <asp:TextBox runat="server" ID="txtCuentaContable"      CssClass="form-control" />
              </div>
         <div class = "form-group col-lg-3">
       <asp:Label ID="Label24" runat="server" class="control-label" Text="Cta. Depósito"></asp:Label>
      <asp:TextBox runat="server" ID="txtCuentaDeposito"     CssClass="form-control" />
             </div>
                    </div>
        
               <div class = "row">
       <div class = "form-group col-lg-3">
        <asp:Button runat="server" ID="btnSave" Text="Guardar" onclick="btnSave_Click"  
                CssClass="btn btn-outline-success" Height="26px" Width="71px" />
       
    </div>
      <div class = "form-group col-lg-3">
       
    <asp:Button runat="server" ID="btnCancel" Text="Cancelar" CssClass="btn btn-outline-success" 
            onclick="btnCancel_Click" Height="28px" Width="74px" />
    </div>
                   </div>

                </div>
         </div>
            </div>


<!-- mensaje -->
        
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
             <div class = "row">
       <div class = "form-group col-lg-12">
       <asp:Label runat="server" ID="lblError" ForeColor="Red" />
       </div>

        </div>
        <div class="footer" >
         <asp:HiddenField ID="HiddenField4" runat="server" />
                                    
            <asp:Button ID="btnYes3" runat="server" Text="Aceptar"  CssClass="btn btn-outline-success" />
                         
        </div>
    </asp:Panel>


        </ContentTemplate>
      </asp:UpdatePanel>

</asp:Content>
                            