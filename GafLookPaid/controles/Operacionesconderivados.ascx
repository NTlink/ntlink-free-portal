<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Operacionesconderivados.ascx.cs" Inherits="GafLookPaid.controles.Operacionesconderivados" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>


<hr width="100%" align="left"> 
     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label2" runat="server" Text="Operaciones Conderivados" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
<div class = "row">
       <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="MontGanAcum"></asp:Label>
        <asp:TextBox ID="txtMontGanAcum" runat="server" CssClass="form-control"
         ToolTip="Atributo requerido para expresar el monto de la ganancia acumulable" 
          ></asp:TextBox>
        
      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontGanAcum" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
         <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontGanAcum" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtMontGanAcum" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
              <div class = "form-group col-lg-3">
    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
      <asp:Label ID="Label5" runat="server" Text="MontPerdDed"></asp:Label>
        <asp:TextBox ID="txtMontPerdDed" runat="server"
         ToolTip="Atributo requerido para expresar el monto de la pérdida deducible" 
         CssClass="form-control"></asp:TextBox><br />
          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontPerdDed" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontPerdDed" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" Display="Dynamic"
    ControlToValidate="txtMontPerdDed" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>

    </div>
   </div>