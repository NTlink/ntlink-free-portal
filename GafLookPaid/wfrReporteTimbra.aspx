<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrReporteTimbra.aspx.cs" Inherits="GafLookPaid.wfrReporteTimbra" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
               <h3>REPORTE DE TIMBRADO</h3>
            </div>
            <div class ="card-body" >
         <div class = "row">
            <div class = "col-lg-12">
           <h41>REPORTE GENERAL DE TIMBRADO</h41>
                </div>
             </div>
        <div style="width:100%;  text-align:center ">

               <asp:GridView ID="gvReporte" runat="server" AutoGenerateColumns="False" 
                   HorizontalAlign="Center" CssClass="table table-hover table-striped grdViewTable"
            onrowdatabound="gvReporte_RowDataBound">
                         <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
                <RowStyle Font-Size="11px" Height="1em"/>
                <Columns>
                <asp:BoundField DataField="Rfc" HeaderText="RFC" />
                <asp:BoundField DataField="RazonSocial" HeaderText="Razon Social" />
                <asp:BoundField DataField="Contratados" HeaderText="Timbres Contratados" />
                <asp:BoundField DataField="Comsumidos" HeaderText="Timbres Comsumidos" />
                <asp:BoundField DataField="Porcentaje" HeaderText="%" />
            </Columns>
                   <RowStyle HorizontalAlign="Center" />
    </asp:GridView>
    </div>
    <br />
         <div class = "row">
            <div class = "col-lg-12">
         <h4>REPORTE ANUAL </h4>
                </div>
             </div>
       <div class = "row">
         <div class = "form-group col-lg-3">
       <asp:Label ID="Label2" runat="server" class="control-label" Text="Año"></asp:Label>
          <asp:DropDownList runat="server" ID="ddlAnio2" AppendDataBoundItems="True"  CssClass="form-control"/>
     </div>
      <div class = "col-lg-6">
              <asp:Button runat="server" ID="btnBuscar2" Text="Buscar" CssClass="btn btn-outline-success"
                    onclick="btnBuscar2_Click" />
           <asp:Button runat="server" ID="btnExcel" Text="Exportar a Excel" CssClass="btn btn-outline-success"
                    onclick="btnExcel_Click"/>
          </div>
           </div>
                   
     
    <div style="width:100%">
       <asp:GridView runat="server" ID="gvReporte2" AutoGenerateColumns="False" HorizontalAlign="Center" 
        CellPadding="4" style="text-align: center" CssClass="table table-hover table-striped grdViewTable">
        <EmptyDataTemplate>
            No se encontraron registros.
        </EmptyDataTemplate>
            <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
                <RowStyle Font-Size="11px" Height="1em"/>
          <Columns>
            <asp:BoundField HeaderText="RFC" DataField="Rfc"/>
            <asp:BoundField HeaderText="Cliente" DataField="Cliente"/>
            <asp:BoundField HeaderText="Emitidos" DataField="Emitidos" />
            <asp:BoundField HeaderText="Mes" DataField="Mes"/>
        </Columns>
    </asp:GridView>
    </div>
    <br />

              <div class = "row">
            <div class = "col-lg-12">

      <h4>REPORTE DESGLOSADO POR EMPRESA</h4>
                </div>
                  </div>

        <br />
       <div class = "row">
         <div class = "form-group col-lg-3">
       <asp:Label ID="Label1" runat="server" class="control-label" Text="Mes"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlMes" CssClass="form-control">
                    <asp:ListItem Text="Todos" Value="0" />
                    <asp:ListItem Text="Enero" Value="1" />
                    <asp:ListItem Text="Febrero" Value="2" />
                    <asp:ListItem Text="Marzo" Value="3" />
                    <asp:ListItem Text="Abril" Value="4" />
                    <asp:ListItem Text="Mayo" Value="5" />
                    <asp:ListItem Text="Junio" Value="6" />
                    <asp:ListItem Text="Julio" Value="7" />
                    <asp:ListItem Text="Agosto" Value="8" />
                    <asp:ListItem Text="Septiembre" Value="9" />
                    <asp:ListItem Text="Octubre" Value="10" />
                    <asp:ListItem Text="Noviembre" Value="11" />
                    <asp:ListItem Text="Diciembre" Value="12" />
                </asp:DropDownList>
           </div>
              <div class = "form-group col-lg-3">
       <asp:Label ID="Label3" runat="server" class="control-label" Text="Año"></asp:Label>
      <asp:DropDownList runat="server" ID="ddlAnio" AppendDataBoundItems="True" CssClass="form-control"/>
                  </div>
           <div class = "col-lg-6">
   
            <asp:Button runat="server" ID="btnBuscar" Text="Buscar" 
                    onclick="btnBuscar_Click" CssClass="btn btn-outline-success"/>
               <asp:Button ID="btnExportar" runat="server" Text="Exportar a Excel" 
                    onclick="btnExportar_Click" CssClass="btn btn-outline-success"/>
            </div>
    </div>
    <div style="height: 450px;overflow: auto">
        <asp:GridView ID="gvReporteEmisor" runat="server" AutoGenerateColumns="False"
            HorizontalAlign="Center"  CssClass="table table-hover table-striped grdViewTable">
              <PagerStyle BackColor="#c1cf75" ForeColor="Snow" Height="1em" Font-Size="12px" HorizontalAlign="Right"/>
            <HeaderStyle BackColor="#808080" Font-Italic="false" Height="1em" Font-Size="12px" ForeColor="Snow"  />
                <RowStyle Font-Size="11px" Height="1em"/>
          
            <Columns>
                <asp:BoundField DataField="Rfc" HeaderText="RFC" />
                <asp:BoundField DataField="Cliente" HeaderText="Razon Social" />
                <asp:BoundField DataField="Emitidos" HeaderText="Timbres Emitidos" />
                <asp:BoundField DataField="Cancelados" HeaderText="Timbres Cancelados"  Visible="false"/>
            </Columns>
        </asp:GridView>
    </div>
            
    </div>
         </div>
            </div>
        </section>
        </ContentTemplate>
     </asp:UpdatePanel>
    
</asp:Content>
