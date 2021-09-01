<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrSucursales.aspx.cs" Inherits="GafLookPaid.wfrSucursales" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
     <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />

<%--<link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />--%>
    
    <asp:UpdatePanel ID="up1" runat="server"   >
    <ContentTemplate>
 <section class="services">
        <div class="container">
            <div class="title text-center">
            
               
            </div>
          
              
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Sucursal</h3>
            </div>
            <div class ="card-body" >
       <div class = "row">
       <div class = "form-group col-lg-12">

    <asp:Label runat="server" ID="lblError" ForeColor="Red" />
           </div>
           </div>
                <div class = "row">
       <div class = "form-group col-lg-12">
      <asp:Label ID="Label1" runat="server" class="control-label" Text="Nombre"></asp:Label>
             
                <asp:HiddenField runat="server" ID="txtIdEmpresa"/>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ID="rfvNombre" ErrorMessage="* Requerido" Display="Dynamic"
                 ControlToValidate="txtNombre" />
           </div>
                    </div>
                             <div class = "row">
       <div class = "form-group col-lg-3">
      <asp:Label ID="Label2" runat="server" class="control-label" Text="Lugar de expedición"></asp:Label>
           </div>
           <div class = "form-group col-lg-3">
                <asp:DropDownList ID="ddlEstado" runat="server" AutoPostBack="True" CssClass="form-control"
                    onselectedindexchanged="ddlEstado_SelectedIndexChanged">
                </asp:DropDownList>
               </div>
               <div class = "form-group col-lg-3">
                <asp:DropDownList ID="ddlMunicipio" runat="server" AutoPostBack="True" CssClass="form-control"
                    onselectedindexchanged="ddlMunicipio_SelectedIndexChanged">
                </asp:DropDownList>
                   </div>
                   <div class = "form-group col-lg-3">
                <asp:DropDownList ID="ddlCP" runat="server" AutoPostBack="True" CssClass="form-control"
                    onselectedindexchanged="ddlCP_SelectedIndexChanged">
                </asp:DropDownList>

                <%--
                <asp:TextBox runat="server" ID="txtLugarExpedicion"  Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfvLugarExpedicion" ErrorMessage="* Requerido" Display="Dynamic"
                 ControlToValidate="txtLugarExpedicion" />
                 --%>
            </div>
                                 </div>
                             <div class = "row">
       <div class = "form-group col-lg-12">
      <asp:Label ID="Label3" runat="server" class="control-label" Text="Domicilio"></asp:Label>
             <asp:TextBox runat="server" ID="txtDomicilio"  CssClass="form-control" 
                    TextMode="MultiLine" Height="44px" Width="375px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="* Requerido" Display="Dynamic"
                 ControlToValidate="txtDomicilio" />
        </div>
</div>

             <div class = "row">
       <div class = "form-group col-lg-12">
    
         <asp:Button runat="server" ID="btnGuardar" Text="Guardar"
             onclick="btnGuardar_Click" CssClass="btn btn-outline-success"/>&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="btnCancelar" Text="Cancelar" CssClass="btn btn-outline-success"
            CausesValidation="False" onclick="btnCancelar_Click" />
    </div>
                 </div>
                </div>
         </div>
            </div>
     </section>
        </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
