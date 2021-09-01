<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Intereses.ascx.cs" Inherits="GafLookPaid.controles.Intereses" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

 <style type="text/css">
     .style1
     {
         text-align: right;
     }
     .style3
     {
         width: 211px;
     }
     .style7
     {
         width: 90px;
     }
     .style8
     {
         width: 150px;
         text-align: left;
     }
     .style10
     {
         width: 111px;
     }
     .style11
     {
         width: 154px;
     }
     .style12
     {
         width: 154px;
         text-align: left;
     }
 </style>


 <%--   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
    
    $(document).ready(function () {
        $(".prueba").keypress(function () {
            alert('hola');
        });
    });
</script>--%>

<hr width="100%" align="left"> 
     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label1" runat="server" Text="Intereses" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
     <div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
       
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="SistFinanciero"></asp:Label>
    <asp:DropDownList ID="ddlSistFinanciero" runat="server" CssClass="form-control"
     ToolTip="Atributo requerido para expresar si los interés obtenidos en el periodo o ejercicio provienen del sistema financiero"
    >
        <asp:ListItem>SI</asp:ListItem>
        <asp:ListItem>NO</asp:ListItem>
    </asp:DropDownList>
    </div>
   
  <div class = "form-group col-lg-3">
       
    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
           <asp:Label ID="Label9" runat="server" Text="RetiroAORESRetInt"></asp:Label>
     <asp:DropDownList ID="ddlRetiroAORESRetInt" runat="server" CssClass="form-control"
      ToolTip="Atributo requerido para expresar si los intereses obtenidos fueron retirados en el periodo o ejercicio" 
      >
        <asp:ListItem>NO</asp:ListItem>
        <asp:ListItem>SI</asp:ListItem>
    </asp:DropDownList>
   </div>
 
<div class = "form-group col-lg-3">
       
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
           <asp:Label ID="Label10" runat="server" Text="OperFinancDerivad"></asp:Label>
     <asp:DropDownList ID="ddlOperFinancDerivad" runat="server" CssClass="form-control"
      ToolTip="Atributo requerido para expresar si los intereses obtenidos corresponden a operaciones financieras derivadas." 
  >
        <asp:ListItem>NO</asp:ListItem>
        <asp:ListItem>SI</asp:ListItem>
    </asp:DropDownList>
    </div>
         </div>
  <div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
       <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
                               <asp:Label ID="Label11" runat="server" Text="MontIntNominal"></asp:Label>
    <asp:TextBox ID="txtMontIntNominal" runat="server"
      ToolTip="Atributo requerido para expresar el importe del interés Nóminal obtenido en un periodo o ejercicio" 
      CssClass="form-control"></asp:TextBox>
       
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontIntNominal" />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontIntNominal" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" Display="Dynamic"
    ControlToValidate="txtMontIntNominal" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
             
</div>   
                    <div class = "form-group col-lg-3">
      <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
          <asp:Label ID="Label12" runat="server" Text="MontIntReal"></asp:Label>
    <asp:TextBox ID="txtMontIntReal" runat="server" 
     ToolTip="Atributo requerido para expresar el monto de los intereses reales " 
      CssClass="form-control"></asp:TextBox>
           
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontIntReal" />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontIntReal" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtMontIntReal" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion" />
           
         </div>
      
                <div class = "form-group col-lg-3">
      <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
          <asp:Label ID="Label13" runat="server" Text="Perdida"></asp:Label>
    <asp:TextBox ID="txtPerdida"  runat="server"
    ToolTip="Atributo requerido para expresar la pérdida por los intereses obtenidos en el periodo o ejercicio" 
    CssClass="form-control" ></asp:TextBox>
                     

   <%--<asp:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="txtPerdida"
                        Mask="9{9}.9999" MaskType="Number" InputDirection="RightToLeft" />--%>
   
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtPerdida" />
                      <asp:RequiredFieldValidator runat="server" ID="txtPerdidaField" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtPerdida" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtPerdida" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
   
</div>
   </div>