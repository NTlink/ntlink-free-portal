<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrSucursalesConsulta.aspx.cs" Inherits="GafLookPaid.wfrSucursalesConsulta" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
               <h3>Sucursales de la empresa</h3>
            </div>
            <div class ="card-body" >
                 <div class = "row form-group">
      <div class = "col-lg-12">
    
     <h5><asp:Label ID="lblEmpresa" runat="server"></asp:Label></h5>
          <%--</div>--%>
                     </div>
     <asp:HiddenField ID="hdIdempresa" runat="server" />
                       <div class="border border-success" style=" width:100%;   " >
       
    <asp:GridView runat="server" ID="gvSucursales" AutoGenerateColumns="False" 
        onrowcommand="gvSucursales_RowCommand"  CssClass="table table-hover table-striped grdViewTable"
     DataKeyNames="IdSucursal" AllowPaging="True"  onpageindexchanging="gvSucursales_PageIndexChanging">
        <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
                <RowStyle Font-Size="11px" Height="1em"/>
        <EmptyDataTemplate>
            No se encontraron registros.
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Lugar de Expedición" DataField="LugarExpedicion" />
            <asp:ButtonField Text="Editar" CommandName="EditarSucursal" />
        </Columns>
    </asp:GridView>
                           </div>
                        </div>
    
<div class = "row form-group">
             <div class = "col-lg-12">
    </div>
    </div>
                    
     <div class = "row form-group">
             <div class = "col-lg-12">
    
        <asp:Button runat="server" ID="btnNuevaSucursal" Text="Nueva Sucursal"
            onclick="btnNuevaSucursal_Click" CssClass="btn btn-outline-success" />
    </div>
         </div>

             
         </div>
            </div>
      </div>
            </section>


</asp:Content>
