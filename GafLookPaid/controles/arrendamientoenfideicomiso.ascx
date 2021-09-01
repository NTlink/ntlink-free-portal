<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="arrendamientoenfideicomiso.ascx.cs" Inherits="GafLookPaid.controles.arrendamientoenfideicomiso" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<style type="text/css">
    .style1
    {
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
       
<asp:Label ID="Label2" runat="server" Text="Arrendamiento en Fideicomiso" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">

    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
          <asp:Label ID="Label1" runat="server" Text="PagProvEfecPorFiduc"></asp:Label>
        <asp:TextBox ID="txtPagProvEfecPorFiduc" runat="server"
          ToolTip="Atributo requerido para expresar el importe del  pago efectuado por parte del fiduciario al arrendador de bienes en el periodo" 
          CssClass="form-control"></asp:TextBox>
        
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtPagProvEfecPorFiduc" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtPagProvEfecPorFiduc" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtPagProvEfecPorFiduc" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
</div>

                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
          <asp:Label ID="Label5" runat="server" Text="RendimFideicom"></asp:Label>
        <asp:TextBox ID="txtRendimFideicom" runat="server"
         ToolTip="Atributo requerido para expresar el importe de  los rendimientos obtenidos en el periodo por el arrendamiento de bienes." 
        CssClass="form-control"></asp:TextBox><br />
          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtRendimFideicom" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtRendimFideicom" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" Display="Dynamic"
    ControlToValidate="txtRendimFideicom" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>

    </div>
                   <div class = "form-group col-lg-3">
  
                        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
                              <asp:Label ID="Label6" runat="server" Text="DeduccCorresp"></asp:Label>
    <asp:TextBox ID="txtDeduccCorresp"  runat="server"
    ToolTip="Atributo requerido para expresar el importe de las deducciones correspondientes al arrendamiento de los bienes durante el periodo" 
    CssClass="form-control" ></asp:TextBox><br />
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtDeduccCorresp" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtDeduccCorresp" />
 <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtDeduccCorresp" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                       </div>
    </div>

<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
          <asp:Label ID="Label7" runat="server" Text="MontTotRet"></asp:Label>
    <asp:TextBox ID="txtMontTotRet" runat="server" 
    ToolTip="Atributo opcional para expresar el monto total de la retención del arrendamiento de los bienes del periodo" 
    CssClass="form-control"></asp:TextBox><br />
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotRet" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotRet" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
                    <div class = "form-group col-lg-3">
      <asp:Label ID="Label9" runat="server" Text="MontResFiscDistFibras"></asp:Label>
    <asp:TextBox ID="txtMontResFiscDistFibras" runat="server" 
    ToolTip="Atributo opcional para expresar el monto del resultado fiscal distribuido por FIBRAS"
   CssClass="form-control"></asp:TextBox>
       
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontResFiscDistFibras" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" Display="Dynamic"
    ControlToValidate="txtMontResFiscDistFibras" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>

</div>
              <div class = "form-group col-lg-3">
          <asp:Label ID="Label10" runat="server" Text="MontOtrosConceptDistr"></asp:Label>
        <asp:TextBox ID="txtMontOtrosConceptDistr"  runat="server"
    ToolTip="Atributo opcional para expresar el monto de otros conceptos distribuidos" 
    CssClass="form-control" ></asp:TextBox><br />
     
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontOtrosConceptDistr" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtMontOtrosConceptDistr" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                  </div>
    </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
          <asp:Label ID="Label11" runat="server" Text="DescrMontOtrosConceptDistr"></asp:Label>
 <asp:TextBox ID="txtDescrMontOtrosConceptDistr"  runat="server"
    ToolTip="Atributo opcional para describir los conceptos distribuidos cuando se señalen otros conceptos." 
    CssClass="form-control" ></asp:TextBox>
   </div>
    </div>