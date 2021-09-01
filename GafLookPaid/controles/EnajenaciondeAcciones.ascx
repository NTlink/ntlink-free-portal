<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EnajenaciondeAcciones.ascx.cs" Inherits="GafLookPaid.controles.EnajenaciondeAcciones" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<style type="text/css">
    .style1
    {
        width: 155px;
    }
  
    .style5
    {
        text-align: left;
    }
  
</style>

<hr width="100%" align="left"> 
     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label2" runat="server" Text="Enajenacion de Acciones" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label1" runat="server" Text="ContratoIntermediacion"></asp:Label>
        <asp:TextBox ID="txtContratoIntermediacion" runat="server" CssClass="form-control"
         ToolTip="Atributo requerido para expresar la descripción del contrato de intermediación" 
          ></asp:TextBox>
       
      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtContratoIntermediacion" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
      </div>
                    <div class = "form-group col-lg-3">
        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label5" runat="server" Text="Ganancia"></asp:Label>
        <asp:TextBox ID="txtGanancia" runat="server"
         ToolTip="Atributo requerido para expresar la ganancia obtenida por la enajenación de acciones u operación de valores" 
         CssClass="form-control"></asp:TextBox><br />
          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtGanancia" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtGanancia" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" Display="Dynamic"
    ControlToValidate="txtGanancia" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
      <asp:Label ID="Label6" runat="server" Text="Perdida"></asp:Label>
  P <asp:TextBox ID="txtPerdida"  runat="server"
    ToolTip="Atributo requerido para expresar la pérdida en el contrato de intermediación" 
    CssClass="form-control" ></asp:TextBox><br />
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtPerdida" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtPerdida" />
 <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtPerdida" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
    </div>
    