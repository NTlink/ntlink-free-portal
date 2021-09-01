<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Intereseshipotecarios.ascx.cs" Inherits="GafLookPaid.controles.Intereseshipotecarios" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>



<hr width="100%" align="left"> 
     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label2" runat="server" Text="Intereses Hipotecarios" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
<div class = "row">
       <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
  <asp:Label ID="Label1" runat="server" Text="CreditoDeInstFinanc"></asp:Label>
        <asp:DropDownList ID="ddlCreditoDeInstFinanc" runat="server" CssClass="form-control">
            <asp:ListItem>SI</asp:ListItem>
            <asp:ListItem>NO</asp:ListItem>
        </asp:DropDownList>
   </div>
                   <div class = "form-group col-lg-3">
    <asp:Label ID="Label4" runat="server" Text="MontTotIntNominalesDevYPag"></asp:Label>
    <asp:TextBox ID="txtMontTotIntNominalesDevYPag" runat="server" 
    ToolTip="Atributo opcional que expresa el monto total de intereses nominales devengados y pagados"
   CssClass="form-control"></asp:TextBox>
        
              <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotIntNominalesDevYPag" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotIntNominalesDevYPag" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>

    </div>
                 <div class = "form-group col-lg-3">
    <asp:Label ID="Label6" runat="server" Text="PropDeducDelCredit"></asp:Label>
    <asp:TextBox ID="txtPropDeducDelCredit"  runat="server"
    ToolTip="Atributo opcional que expresa la proporción deducible del crédito aplicable sobre los intereses reales devengados y pagados" 
    CssClass="form-control" ></asp:TextBox>
        
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtPropDeducDelCredit" />
 <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtPropDeducDelCredit" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                     </div>
    </div>
<div class = "row">
       <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label7" runat="server" Text="MontTotIntNominalesDev"></asp:Label>
     <asp:TextBox ID="txtMontTotIntNominalesDev" runat="server" 
    ToolTip="Atributo opcional que expresa el monto total de intereses nominales devengados" 
  CssClass="form-control"></asp:TextBox><br />
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotIntNominalesDev" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotIntNominalesDev" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Text="SaldoInsoluto"></asp:Label>
    
     <asp:TextBox ID="txtSaldoInsoluto" runat="server"
         ToolTip="Atributo requerido para expresar el  saldo insoluto al 31 de diciembre del ejercicio inmediato anterior o fecha de contratación si se llevo a cabo en el ejercicio en curso" 
         CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtSaldoInsoluto" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtSaldoInsoluto" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" Display="Dynamic"
    ControlToValidate="txtSaldoInsoluto" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
                    <div class = "form-group col-lg-3">
                        <asp:Label ID="Label9" runat="server" Text="MontTotIntRealPagDeduc"></asp:Label>
    <asp:TextBox ID="txtMontTotIntRealPagDeduc"  runat="server"
    ToolTip="Atributo opcional que expresa el monto total de intereses reales pagados deducibles" 
    CssClass="form-control"></asp:TextBox><br />
     
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotIntRealPagDeduc" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotIntRealPagDeduc" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
    </div>
<div class = "row">
       <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label10" runat="server" Text="NumContrato"></asp:Label>
 <asp:TextBox ID="txtNumContrato"  runat="server"
    ToolTip="Atributo opcional que expresa el número de contrato del crédito hipotecario" 
    CssClass="form-control" ></asp:TextBox><br />
   </div>
    </div>