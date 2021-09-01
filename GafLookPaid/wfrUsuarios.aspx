<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrUsuarios.aspx.cs" Inherits="GafLookPaid.wfrUsuarios" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%--<link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />--%>
   
    <asp:UpdatePanel ID="up1" runat="server"  UpdateMode="Conditional"  >
    <ContentTemplate>
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
               <h3>Usuario</h3>
            </div>
            <div class ="card-body" >
       <div class = "row">
       <div class = "col-lg-12">
          <asp:Label runat="server" ID="lblErrorMessage" ForeColor="Red" />
        </div>
           </div>
          <div class = "row">
              <div class = "col-lg-2"></div>
                    <div class = "form-group col-lg-6">
                 <asp:Label ID="Label2" runat="server" class="control-label" Text="Empresa"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlEmpresas" AppendDataBoundItems="True"
                    DataValueField="idEmpresa" CssClass="form-control"
                 DataTextField="RazonSocial"/>
            </div>
        </div>
       <div class = "row">
              <div class = "col-lg-2"></div>
                    <div class = "form-group col-lg-6">
                 <asp:Label ID="Label1" runat="server" class="control-label" Text="Email (inicio de sesión)"></asp:Label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="* Requerido" />
                <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="txtEmail" ErrorMessage="* Direccion invalida"
                         ValidationExpression="^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" Display="Dynamic" />
            </div>
        </div>
          <div class = "row">
                  <div class = "col-lg-2"></div>
           <div class = "form-group col-lg-6">
                 <asp:Label ID="Label3" runat="server" class="control-label" Text="Nombre Completo"></asp:Label>
                <asp:TextBox runat="server" ID="txtNombreCompleto" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtNombreCompleto" Display="Dynamic" ErrorMessage="* Requerido" />

            </div>
        </div>
                <div class = "row">
                <div class = "col-lg-2"></div>
             <div class = "form-group col-lg-6">
                 <asp:Label ID="Label4" runat="server" class="control-label" Text="Iniciales"></asp:Label>
                <asp:TextBox runat="server" ID="txtIniciales" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txtIniciales" Display="Dynamic" ErrorMessage="* Requerido" CssClass="alert-error" />
               </div>

        </div>
          <div class = "row">
             <div class = "col-lg-2"></div>
                <div class = "form-group col-lg-6">
                 <asp:Label ID="Label5" runat="server" class="control-label" Text="Password"></asp:Label>
                <asp:TextBox runat="server" ID="txtConfirmarPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ID="rfvPassword" ControlToValidate="txtPassword"
                    ErrorMessage="* Requerido" Display="Dynamic" />
                <asp:RegularExpressionValidator runat="server" ID="revPassword" ControlToValidate="txtPassword"
                    Display="Dynamic" ErrorMessage="* El password no cumple con las politicas de seguridad"
                    ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%+-_]).{8,20})"  />
                <asp:CompareValidator runat="server" ID="cvPassword" ControlToValidate="txtPassword" Display="Dynamic"
                    ControlToCompare="txtConfirmarPassword" ErrorMessage="* La confirmacion y el password no coinciden" Operator="Equal"  />
            </div>
        </div>
          <div class = "row">
               <div class = "col-lg-2"></div>
              <div class = "form-group col-lg-6">
                 <asp:Label ID="Label6" runat="server" class="control-label" Text="Confirmar Password"></asp:Label>
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control" />
                </div>
        </div>
                   <div class = "row">
            <div class = "col-lg-2"></div>
                 <div class = "form-group col-lg-6">
                 <asp:Label ID="Label7" runat="server" class="control-label" Text="Perfil"></asp:Label>
            <asp:DropDownList runat="server" ID="ddlPerfiles" AppendDataBoundItems="True" 
                   CssClass="form-control" />
                   </div>
                       </div>
                   <div class = "row"><div class = "col-lg-2"></div>
               <div class = "col-lg-6">
        <asp:Button runat="server" ID="btnGuardar" Text="Guardar" onclick="btnGuardar_Click" CssClass="btn btn-outline-success" />&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="btnCancelar" Text="Cancelar" PostBackUrl="wfrUsuariosConsulta.aspx" CssClass="btn btn-outline-success" />
    </div>
                       </div>
                </div>
         </div>
            </div>
        </section>
        </ContentTemplate>
        </asp:UpdatePanel>

</asp:Content>
