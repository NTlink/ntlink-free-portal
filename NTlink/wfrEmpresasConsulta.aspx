<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrEmpresasConsulta.aspx.cs" Inherits="GafLookPaid.wfrEmpresasConsulta" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
               <h3>Empresas</h3>
            </div>
            <div class ="card-body" >
        
                 <div class="border border-success" style=" width:100%;   " >
             <asp:GridView runat="server" ID="gvEmpresas"  CssClass="table table-hover table-striped grdViewTable" 
        AutoGenerateColumns="False" onrowcommand="gvEmpresas_RowCommand"
     DataKeyNames="IdEmpresa" AllowPaging="True" ItemStyle-Height = "5px"
        onpageindexchanging="gvEmpresas_PageIndexChanging" >
             <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
                <RowStyle Font-Size="11px" Height="1em"/>
        <EmptyDataTemplate>
            No se encontraron registros.
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField   HeaderText="RFC"   DataField="RFC" />
            <asp:BoundField HeaderText="Razón Social" DataField="RazonSocial" />
            <asp:ButtonField Text="Editar" CommandName="EditarEmpresa" />
            <asp:ButtonField Text="Sucursales(Lugar de Expedición)" CommandName="EditarSucursal" />
            <asp:ButtonField Text="Conceptos" CommandName="EditarConceptos" />
        </Columns>
    </asp:GridView>
                      </div>
    <br />
       <div class = "row form-group">
             <div class = "col-lg-12">
               <asp:Button runat="server" ID="btnNuevaEmpresa" Text="Nueva Empresa" onclick="btnNuevaEmpresa_Click"  CssClass="btn btn-outline-success" />
    </div>
           </div>

       </div>
         </div>
            </div>
        </section>
        </ContentTemplate>
        </asp:UpdatePanel>


</asp:Content>
