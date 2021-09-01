<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrUsuariosConsulta.aspx.cs" Inherits="GafLookPaid.wfrUsuariosConsulta" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%--<link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
 --%>   
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
               <h3>Usuarios</h3>
            </div>
            <div class ="card-body" >
       
  <div class = "row">
   <div class = "col-lg-12">
   
        <asp:Label runat="server" ID="lblMensaje" />
    </div>
      </div>
   <div class = "row">
     <div class = "form-group col-lg-4">
    <asp:Label ID="Label2" runat="server" class="control-label" Text="Empresa"></asp:Label>
    <asp:DropDownList runat="server" ID="ddlEmpresas" AutoPostBack="True" AppendDataBoundItems="True"
     DataValueField="idEmpresa" DataTextField="RazonSocial" 
          onselectedindexchanged="ddlEmpresas_SelectedIndexChanged" CssClass="form-control" />
     </div>
      </div>
    <div class = "row">
     <div class = "form-group col-lg-4">
           <asp:Button runat="server" ID="btnNuevoUsuario" Text="Nuevo Usuario" 
            onclick="btnNuevoUsuario_Click"  CssClass="btn btn-outline-success"/>
         </div>
    </div>
    <br />
   <div style="height:100%; overflow-y: scroll;">
     <asp:GridView runat="server" ID="gvUsuarios" AutoGenerateColumns="False"
        onrowcommand="gvUsuarios_RowCommand" CssClass="table table-hover table-striped grdViewTable" 
      AllowPaging="True" onpageindexchanging="gvUsuarios_PageIndexChanging">
        <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
            <RowStyle Font-Size="11px" Height="1em"/>
         <Columns>
            <asp:BoundField HeaderText="Id" DataField="UserId" />
            <asp:BoundField HeaderText="Nombre" DataField="UserName" />
            <asp:BoundField HeaderText="Perfil" DataField="Perfil" />
            <asp:BoundField HeaderText="Email" DataField="Email" />
            <asp:BoundField HeaderText="Status" DataField="IsLockedOut" />
            <asp:ButtonField Text="Editar" CommandName="EditarUsuario" />
            <asp:ButtonField Text="Cambiar Password" CommandName="CambiarPassword" />
            
            <%--<asp:ButtonField Text="Editar" ButtonType="Link" CommandName="EditarUsuario" />--%>
        </Columns>
    </asp:GridView>
    </div>
                </div>
         </div>
            </div>
        </section>
      
          <asp:ModalPopupExtender ID="mpeCambiarPassword" runat="server" PopupControlID="pnlCambiarPassword"
         TargetControlID="btnPasswordDummy" CancelControlID="btnCerrarPassword" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlCambiarPassword" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
             Cambiar Password
        </div>
        <div class="body">
               <div class = "row"> 
            <div class="col-lg-11" >
     
        <asp:Label runat="server" ID="lblUserIdCambiarPassword" Visible="False" />
                </div>
                   </div>
                <div class = "row"> 
                    <div class="col-lg-11" >
                        <asp:Label  class="control-label" ID="Label3" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox runat="server" ID="txtConfirmarPassword" CssClass="form-control" TextMode="Password" />
                   
                    <asp:RequiredFieldValidator runat="server" ID="rfvPassword" ControlToValidate="txtPassword" 
                     ErrorMessage="* Requerido" ValidationGroup="CambiarPassword" Display="Dynamic" ForeColor="Red" />
                    <asp:RegularExpressionValidator runat="server" ID="revPassword" ControlToValidate="txtPassword"
                     Display="Dynamic" ErrorMessage="* El password no cumple con las politicas de seguridad" ForeColor="Red" 
                     ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%+_.-]).{8,20})" ValidationGroup="CambiarPassword" />
                    <asp:CompareValidator runat="server" ID="cvPassword" ControlToValidate="txtPassword" Display="Dynamic"
                     ControlToCompare="txtConfirmarPassword" ErrorMessage="* La confirmacion y el password no coinciden"
                      Operator="Equal" ValidationGroup="CambiarPassword" ForeColor="Red" />
                        </div>
                    </div>
             <div class = "row"> 
                    <div class="col-lg-11" >
                        <asp:Label  class="control-label" ID="Label4" runat="server" Text="Confirmar"></asp:Label>
                       <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password"  />
            </div>
                 </div>
        
        <br />
             <div class = "row"> 
                    <div class="col-lg-11" >
            
        <asp:Button runat="server" ID="btnAceptarPassword" Text="Cambiar" onclick="btnAceptarPassword_Click"
         ValidationGroup="CambiarPassword" class="btn btn-outline-success"/>&nbsp;&nbsp;
        <asp:Button runat="server" ID="btnCerrarPassword" Text="Cancelar" class="btn btn-outline-success"/>
                        </div>
                 </div>
            </div>
    </asp:Panel>
    <asp:Button runat="server" ID="btnPasswordDummy" style="display: none;" class="btn btn-primary"/>

          
         <asp:ModalPopupExtender ID="mpeEditarUsuario" runat="server" PopupControlID="panelEditar"
         TargetControlID="btnDummy2" CancelControlID="btnCerrarEdicion" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="panelEditar" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header" >
             Editar Usuario
        </div>
        <div class="body">
               <div class = "row"> 
            <div class="col-lg-11" >
      
        <asp:Label runat="server" ID="Label1" Visible="False" />
                </div>
                   </div>
               <div class = "row"> 
                    <div class="col-lg-11" >
                        <asp:Label  class="control-label" ID="Label5" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtNombre" 
                     ErrorMessage="* Requerido" ValidationGroup="EditarUsuario" Display="Dynamic"  ForeColor="Red" />
       
                   </div>
                   </div>
               <div class = "row"> 
                    <div class="col-lg-11" >
                        <asp:Label  class="control-label" ID="Label6" runat="server" Text="Iniciales"></asp:Label>
                       <asp:TextBox runat="server" ID="txtIniciales" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txtIniciales" 
                     ErrorMessage="* Requerido" ValidationGroup="EditarUsuario" Display="Dynamic" ForeColor="Red" />
                </div>
                   </div>
               <div class = "row"> 
                    <div class="col-lg-11" >
                        <asp:Label  class="control-label" ID="Label7" runat="server" Text="Perfil"></asp:Label>
                    <asp:DropDownList runat="server" ID="ddlPerfil" CssClass="form-control">
                        <asp:ListItem runat="server" Text="Administrador" Value="Administrador"></asp:ListItem>
                        <asp:ListItem runat="server" Text="Operador" Value="Operador"></asp:ListItem>
                         <asp:ListItem runat="server" Text="Vendedor" Value="Vendedor"></asp:ListItem>
                       
                    </asp:DropDownList>
                        </div>
                   </div>
        
              <div class = "row"> 
                    <div class="col-lg-11" >
             
        <asp:Button runat="server" ID="btnGuardarEdicion" class="btn btn-outline-success"
            ValidationGroup="EditarUsuario" Text="Guardar" onclick="btnGuardarEdicion_Click"
         />&nbsp;&nbsp;
        <asp:Button runat="server" ID="btnCerrarEdicion" Text="Cancelar" class="btn btn-outline-success"/>
                        </div>
                  </div>
            </div>
       
    </asp:Panel>
    <asp:Button runat="server" ID="btnDummy2" style="display: none;" class="btn btn-primary"/>


          </ContentTemplate>
           </asp:UpdatePanel>
       <asp:HiddenField runat="server" ID="txtIdUsuario" />
                  

        
        

</asp:Content>