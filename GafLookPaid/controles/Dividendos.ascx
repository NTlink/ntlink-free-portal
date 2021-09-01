<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dividendos.ascx.cs" Inherits="GafLookPaid.controles.Dividendos" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<style type="text/css">
    .style1
    {
        text-align: right;
        width: 48px;
    }
  
    .style5
    {
        text-align: left;
    }
  
</style>

<hr width="100%" align="left"> 
     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label2" runat="server" Text="Dividendos" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
       
    
    <asp:Label ID="Label3" runat="server" ForeColor="Red" 
      Text="*"></asp:Label>
         <asp:Label ID="Label1" runat="server" Text="CveTipDivOUtil"></asp:Label>
        <asp:DropDownList ID="ddlCveTipDivOUtil" runat="server" CssClass="form-control"
           ToolTip="Atributo requerido para expresar la clave del tipo de dividendo o utilidad distribuida de acuerdo al catálogo" 
        >
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
        </asp:DropDownList>
       </div>
         <div class = "form-group col-lg-3">
        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
               <asp:Label ID="Label6" runat="server" Text="MontISRAcredRetMexico"></asp:Label>
        <asp:TextBox ID="txtMontISRAcredRetMexico" runat="server"
         ToolTip="Atributo requerido para expresar el importe o retención  del dividendo o  utilidad en territorio nacional" 
         CssClass="form-control"></asp:TextBox><br />
          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontISRAcredRetMexico" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontISRAcredRetMexico" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" Display="Dynamic"
    ControlToValidate="txtMontISRAcredRetMexico" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
             </div>
     <div class = "form-group col-lg-3">
               <asp:Label ID="Label8" runat="server" Text="MontDivAcumExt"></asp:Label>
        <asp:TextBox ID="txtMontDivAcumExt"  runat="server"
    ToolTip="Atributo opcional para expresar el monto del dividendo acumulable extranjero" 
    CssClass="form-control"></asp:TextBox><br />
     
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontDivAcumExt" />
 <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtMontDivAcumExt" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
         </div>
   </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
                       <asp:Label ID="Label9" runat="server" Text="MontRetExtDivExt"></asp:Label>
        <asp:TextBox ID="txtMontRetExtDivExt" runat="server" 
    ToolTip="Atributo opcional para expresar el monto de la retención en el extranjero sobre dividendos del extranjero" 
    CssClass="form-control"></asp:TextBox><br />
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontRetExtDivExt" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" Display="Dynamic"
    ControlToValidate="txtMontRetExtDivExt" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>

    </div>
         <div class = "form-group col-lg-3">
    <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:Label ID="Label10" runat="server" Text="TipoSocDistrDiv"></asp:Label>
    <asp:DropDownList ID="ddlTipoSocDistrDiv" 
    ToolTip="Atributo requerido  para expresar si el dividendo es distribuido por sociedades nacionales o extranjeras" 
    runat="server" CssClass="form-control">
        <asp:ListItem>Sociedad Nacional</asp:ListItem>
        <asp:ListItem>Sociedad Extranjera</asp:ListItem>
    </asp:DropDownList>
    </div>
         <div class = "form-group col-lg-3">
        <asp:Label ID="Label12" runat="server" Text="MontISRAcredNal"></asp:Label>
    <asp:TextBox ID="txtMontISRAcredNal"  runat="server"
    ToolTip="Atributo opcional para expresar el monto del ISR acreditable nacional" 
  CssClass="form-control"></asp:TextBox><br />
     
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontISRAcredNal" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtMontISRAcredNal" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
</div>
    </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
     <asp:Label ID="Label11" runat="server" Text="MontDivAcumNal"></asp:Label>
    <asp:TextBox ID="txtMontDivAcumNal"  runat="server"
    ToolTip="Atributo opcional para expresar el monto del dividendo acumulable nacional" 
    CssClass="form-control"></asp:TextBox><br />
     
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontDivAcumNal" />
 <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtMontDivAcumNal" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
                  <div class = "form-group col-lg-3">
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
      <asp:Label ID="Label13" runat="server" Text="MontISRAcredRetExtranjero"></asp:Label>
          <asp:TextBox ID="txtMontISRAcredRetExtranjero" runat="server"
    ToolTip="Atributo requerido para expresar el importe o retención  del dividendo o  utilidad en territorio extranjero" 
    CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontISRAcredRetExtranjero" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontISRAcredRetExtranjero" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator7" runat="server" Display="Dynamic"
    ControlToValidate="txtMontISRAcredRetExtranjero" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                      </div>
                  <div class = "form-group col-lg-3">
      <asp:Label ID="Label14" runat="server" Text="ProporcionRem"></asp:Label>
    <asp:TextBox ID="txtProporcionRem"  runat="server"
    ToolTip="Atributo opcional que expresa el porcentaje de participación de sus integrantes o accionistas" 
    CssClass="form-control"></asp:TextBox><br />
     
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtProporcionRem" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" Display="Dynamic"
    ControlToValidate="txtProporcionRem" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
</div>
    </div>