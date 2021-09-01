 
     <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrClientesConsulta.aspx.cs" MaintainScrollPositionOnPostBack="true"  Inherits="GafLookPaid.wfrClientesConsulta" %>
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
               <h3>Consulta de Clientes</h3>
            </div>
            <div class ="card-body" >
       
  <div class = "row">
                    <div class = "form-group col-lg-3">
                 <asp:Label ID="Label2" runat="server" class="control-label" Text="Empresa"></asp:Label>
       <asp:DropDownList runat="server" ID="ddlEmpresa" AppendDataBoundItems="True" DataTextField="RazonSocial"
         DataValueField="IdEmpresa" Enabled="False" CssClass="form-control" />
                        </div>
           <div class = "form-group col-lg-3">
         <%--     <asp:Label runat="server" ID="lblError" ForeColor="Red" CssClass="alert-error" />
            --%>   </div>
    </div>

  <div class = "row">
                    <div class = "form-group col-lg-4">
                 <asp:Label ID="Label1" runat="server" class="control-label" Text="RFC o Razón Social"></asp:Label>
               <asp:TextBox runat="server" ID="txtBusqueda" CssClass="form-control" />
           </div>
                    <div class = "form-group col-lg-6">
      
             <asp:Button runat="server" ID="btnBuscar" Text="Buscar" 
            onclick="btnBuscar_Click" CssClass="btn btn-outline-success"   />
            <asp:Button ID="Button1" runat="server" Text="Nuevo Cliente" OnClick="btnNuevoCliente_Click" 
               CssClass="btn btn-outline-success" />
  </div>
      </div>

                 <div class="border border-success" style=" width:100%;   " >
      
    <asp:GridView runat="server" ID="gvClientes" AutoGenerateColumns="False" class="table-hover" Width="100%"
        onrowcommand="gvClientes_RowCommand"  CssClass="table table-hover table-striped grdViewTable" OnRowDataBound="gvClientes_RowDataBound"
     DataKeyNames="idCliente" AllowPaging="True" 
        onpageindexchanging="gvClientes_PageIndexChanging" style="color: #000000" >
        <PagerStyle BackColor="#808080" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
                <RowStyle Font-Size="11px" Height="1em"/>
         <EmptyDataTemplate>
            No se encontraron registros.
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField HeaderText="RFC" DataField="RFC" />
            <asp:BoundField HeaderText="Razón Social" DataField="RazonSocial" />
         <%--   <asp:ButtonField Text="Editar" ButtonType="Link" CommandName="EditarCliente"/>
        --%>    <asp:TemplateField>
             <ItemTemplate>
                 <div class="form-inline">
                     
                          <asp:LinkButton ID="gvlnkEditC" CommandName="EditarCliente" CommandArgument='<%#((GridViewRow)Container).RowIndex%>' CssClass="btn btn-outline-success" runat="server" style=" padding:1px 6px;">
                                    <i class="fa fa-pencil" title="Editar"></i> 
                                        </asp:LinkButton>
                    
                         <asp:LinkButton ID="btnEliminarCliente" ClientIDMode="AutoID" CommandName="Eliminar" CommandArgument='<%# Eval("idCliente") %>' CssClass="btn btn-outline-success" runat="server" style=" padding:1px 6px;" >
                                    <i class="fa fa-trash " title="Eliminar"></i> 
                                        </asp:LinkButton>
                               </div>
                 </ItemTemplate>
            </asp:TemplateField>
            </Columns>
    </asp:GridView>
</div>    

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
            Eliminar Cliente
        </div>
        <div class="body">
            <br />
          &nbsp;&nbsp;  ¿Desea eliminar el registro?
        </div>
        <div class="footer" >
                                    
            <asp:Button ID="btnYes" runat="server" Text="Yes" Style="display:none" CssClass="yes" />
                   <asp:LinkButton ID="lnkDelete" CssClass="btn btn-outline-success" OnClick="lnkDelete_Click"  runat="server" >
                            Eliminar <i class="fa fa-trash" title="delete"></i> 
                                </asp:LinkButton>
                        
            <asp:Button ID="btnNo" runat="server" Text="Cancelar"  CssClass="btn btn-outline-success"  />
        </div>
    </asp:Panel>

         
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
          <asp:Label runat="server" ID="lblError" ForeColor="Red" CssClass="alert-error" />
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
