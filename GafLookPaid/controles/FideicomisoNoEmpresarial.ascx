<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FideicomisoNoEmpresarial.ascx.cs" Inherits="GafLookPaid.controles.FideicomisoNoEmpresarial" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<style type="text/css">
      
  
    
  
  
</style>

<hr width="100%" align="left"> 
     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label2" runat="server" Text="FideicomisoNoEmpresarial" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
       <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
           <asp:Label ID="Label1" runat="server" Text="MontTotEntradasPer"></asp:Label>
        <asp:TextBox ID="txtMontTotEntradasPeriodo" runat="server"
          ToolTip="Atributo requerido para expresar el importe total de los ingresos del periodo de los fideicomisos que no realizan actividades empresariales" 
          CssClass="form-control" style="text-align: left"></asp:TextBox>
        
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontTotEntradasPeriodo" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotEntradasPeriodo" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotEntradasPeriodo" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
                        </div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label5" runat="server" Text="PartPropAcumDelFideic"></asp:Label>
        <asp:TextBox ID="txtPartPropAcumDelFideicom" runat="server"
         ToolTip="Atributo requerido para expresar la parte proporcional de los ingresos acumulables del periodo que correspondan al  fideicomisario o fideicomitente" 
         CssClass="form-control"></asp:TextBox><br />
          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtPartPropAcumDelFideicom" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtPartPropAcumDelFideicom" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" Display="Dynamic"
    ControlToValidate="txtPartPropAcumDelFideicom" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>

    </div>
           <div class = "form-group col-lg-3">
    <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label6" runat="server" Text="PropDelMontTot"></asp:Label>
    <asp:TextBox ID="txtPropDelMontTot"  runat="server"
    ToolTip="Atributo requerido para expresar la proporción de participación del fideicomisario o fideicomitente de acuerdo al contrato" 
    CssClass="form-control" ></asp:TextBox><br />
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtPropDelMontTot" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtPropDelMontTot" />
 <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtPropDelMontTot" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>

    </div>
    </div>
  
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
    
                       <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
                     <asp:Label ID="Label7" runat="server" Text="IntegracIngresos"></asp:Label>
               <asp:TextBox ID="txtIntegracIngresosConcepto" runat="server" CssClass="form-control"
    ToolTip="Atributo requerido para expresar la descripción del concepto de ingresos de los fideicomisos que no realizan actividades empresariales" 
   ></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtIntegracIngresosConcepto" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
                        </div>
                    <div class = "form-group col-lg-3">
    <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label16" runat="server" Text="PartPropDelFideic"></asp:Label>
               
    <asp:TextBox ID="txtPartPropDelFideicom"  runat="server"
    ToolTip="Atributo requerido para expresar la parte proporcional de las deducciones autorizadas del periodo que corresponden al  fideicomisario o fideicomitente" 
    CssClass="form-control" ></asp:TextBox>
   
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtPartPropDelFideicom" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
   
    <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" Display="Dynamic"
    ControlToValidate="txtPartPropDelFideicom" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtPartPropDelFideicom" />
</div>
                  <div class = "form-group col-lg-3">
    <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label17" runat="server" Text="MontTotEgresPeriodo"></asp:Label>
    <asp:TextBox ID="txtMontTotEgresPeriodo"  runat="server"
    ToolTip="Atributo requerido para expresar el importe total de los egresos del periodo de fideicomiso que no realizan actividades empresariales" 
   CssClass="form-control" ></asp:TextBox><br />
     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontTotEgresPeriodo" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotEgresPeriodo" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotEgresPeriodo" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
      </div>
    </div>
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">

    <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label18" runat="server" Text="IntegracEgresos"></asp:Label>
    <asp:TextBox ID="txtIntegracEgresosConcepto" runat="server" CssClass="form-control"
    ToolTip="Atributo requerido para expresar la descripción del concepto de egresos de los fideicomisos que no realizan actividades empresariales"
    ></asp:TextBox>
    

     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtIntegracEgresosConcepto" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
   </div>
    <div class = "form-group col-lg-3">
    <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label19" runat="server" Text="PropDelMontTotSalidas"></asp:Label>
       
    <asp:TextBox ID="txtPropDelMontTotSalidas"  runat="server"
    ToolTip="Atributo requerido para expresar la proporción de participación del fideicomisario o fideicomitente de acuerdo al contrato" 
    CssClass="form-control" ></asp:TextBox>
    
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtPropDelMontTotSalidas" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtPropDelMontTotSalidas" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" Display="Dynamic"
    ControlToValidate="txtPropDelMontTotSalidas" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
    </div>  
    <div class = "form-group col-lg-3">
   
        <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label119" runat="server" Text="MontRetRelPagFideic"></asp:Label>
    <asp:TextBox ID="txtMontRetRelPagFideic"  runat="server"
    ToolTip="Atributo requerido para expresar el importe total de los egresos del periodo de fideicomiso que no realizan actividades empresariales" 
    CssClass="form-control"></asp:TextBox>
     <asp:FilteredTextBoxExtender ID="txtMontRetRelPagFideic_FilteredTextBoxExtender" 
        runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontRetRelPagFideic" />

     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" 
        ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontRetRelPagFideic" 
        ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator id="RegularExpressionValidator7" runat="server" Display="Dynamic"
    ControlToValidate="txtMontRetRelPagFideic" ErrorMessage="Dato invalido" 
        ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" 
        ValidationGroup="GeneraRetencion"/>
      
</div>
    </div>
     
<div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">

    <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label20" runat="server" Text="DescRetRelPagFideic"></asp:Label>
    <asp:TextBox ID="DescRetRelPagFideic" runat="server" CssClass="form-control"
    ToolTip="Atributo requerido para expresar la descripción del concepto de ingresos de los fideicomisos que no realizan actividades empresariales" 
   ></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" 
        ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="DescRetRelPagFideic" 
        ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
                        </div>
    </div>