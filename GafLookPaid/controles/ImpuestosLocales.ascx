<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ImpuestosLocales.ascx.cs" Inherits="GafLookPaid.controles.ImpuestosLocales" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>


<style type="text/css">
    .style1
    {
        width: 114px;
    }
    .style124
    {
        border-style:solid;
        border-left:  #A8CF38;
    border-right:  #A8CF38;
    border-top:  #A8CF38;
    border-bottom:  #b3b3b3;
        border-radius: 15px ;
        border-width: 1px;
         padding: 2px 4px;
        height:40%rem;
        width:50%;
        color: #000101;
        background-color:transparent;
        
     background-color: #DCD9D9;
        text-align: center;}
       
    }
    .style5
    {
        text-align: left;
    }
</style>

     <div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
       
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label1" runat="server"  Text="Impuesto Local"></asp:Label>
        <asp:DropDownList ID="ddlImpuestoLocal" runat="server" CssClass="form-control"
     ToolTip="Nodo opcional para la expresión de los impuestos locales" >            
    <asp:ListItem Value="RetencionesLocales">RetencionesLocales</asp:ListItem>
    <asp:ListItem Value="TrasladosLocales">TrasladosLocales</asp:ListItem>
       
    </asp:DropDownList>
      </div>
         <div class = "form-group col-lg-3">

    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:Label ID="Label2" runat="server"  Text="Nombre Impuesto"></asp:Label>
        <asp:TextBox ID="txtImpLoc" runat="server"
         ToolTip="Nombre del impuesto local" CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtImpLoc" ValidationGroup="AgregarImpuestoLocal"></asp:RequiredFieldValidator>
             </div>
   
</div>

     <div class = "row">
                  <div class="col-lg-1"></div>
         <div class = "form-group col-lg-3">
    
    <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
               <asp:Label ID="Label5" runat="server"  Text="Importe"></asp:Label>

    <asp:TextBox ID="txtImporte" runat="server" 
    ToolTip="Monto del impuesto local" 
   CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtImporte" ValidationGroup="AgregarImpuestoLocal"></asp:RequiredFieldValidator>

        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtImporte" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ForeColor="Red" Display="Dynamic"
    ControlToValidate="txtImporte" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="AgregarImpuestoLocal"/>

    </div>
          <div class = "form-group col-lg-3">
      <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
               <asp:Label ID="Label6" runat="server"  Text="Tasa"></asp:Label>

    <asp:TextBox ID="txtTasa"  runat="server"
    ToolTip="Porcentaje del impuesto local" CssClass="form-control"
    class="prueba"  ></asp:TextBox>
    
         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" ForeColor="Red" Display="Dynamic"
              ControlToValidate="txtTasa" ValidationGroup="AgregarImpuestoLocal"></asp:RequiredFieldValidator>

     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTasa" />
 <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtTasa" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ForeColor="Red" ValidationGroup="AgregarImpuestoLocal"/>

    </div>
         </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
     <asp:Button runat="server" ID="btnAgregarImp" Text="Agregar Impuesto" 
         ValidationGroup="AgregarImpuestoLocal"  class="btn btn-outline-success"  onclick="btnAgregarImp_Click"/>
</div>
    </div>
<asp:Panel runat="server" CssClass="table-responsive border border-success" style=" background-color: #2d282808;margin:0px auto ">
                         <asp:GridView ID="gvImpuestosLocales" runat="server" AutoGenerateColumns="False" GridLines="None" 
                          ShowHeaderWhenEmpty="True"  Width="100%"  AlternatingRowStyle-HorizontalAlign="Center"
                            onrowcommand="gvImpuestosLocales_RowCommand"  CssClass="table table-hover table-striped grdViewTable"
                             >
                         
			<Columns>
				<asp:BoundField HeaderText="ImpuestoLocal" DataField="ImpuestosLocales" ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="10%" />
				<asp:BoundField HeaderText="Nombre Impuesto" DataField="ImpLoc" ItemStyle-HorizontalAlign="Center" />
				<asp:BoundField HeaderText="Tasa" DataField="Tasa"  ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField HeaderText="Importe" DataField="Importe" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Center" />
               			
				<asp:ButtonField Text="Eliminar" CommandName="EliminarConcepto" Visible="False" ItemStyle-HorizontalAlign="Center" />
			</Columns>
		</asp:GridView>
    </asp:Panel>