<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Planesderetiro.ascx.cs" Inherits="GafLookPaid.controles.Planesderetiro" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>


 <hr width="100%" align="left"> 
     <div class = "row">
      <div class = "form-group col-lg-12">
       
<asp:Label ID="Label12" runat="server" Text="Planes de retiro" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
   <div class = "row">
       <div class="col-lg-1"></div>
       <div class = "form-group col-lg-3">

    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
   <asp:Label ID="Label1" runat="server" Text="SistemaFinanc"></asp:Label>
    <asp:DropDownList ID="ddlSistemaFinanc" runat="server" CssClass="form-control"
     ToolTip="Atributo requerido para expresar si los planes personales de retiro son del sistema financiero" >
        <asp:ListItem>SI</asp:ListItem>
        <asp:ListItem>NO</asp:ListItem>
    </asp:DropDownList>
    </div>
        <div class = "form-group col-lg-3">

    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label13" runat="server" Text="HuboRetirosAnioInmAntPer"></asp:Label>
     <asp:DropDownList ID="ddlHuboRetirosAnioInmAntPer" runat="server" CssClass="form-control"
      ToolTip="Atributo requerido para expresar si se realizaron retiros de recursos invertidos y sus rendimientos en el ejercicio inmediato anterior antes de cumplir los requisitos de permanencia" 
      >
        <asp:ListItem>SI</asp:ListItem>
        <asp:ListItem>NO</asp:ListItem>
       
    </asp:DropDownList>
   </div>
         <div class = "form-group col-lg-3">
               <asp:Label ID="Label14" runat="server" Text="MontTotExentRetiradoAnioInmAnt"></asp:Label>
    <asp:TextBox ID="txtMontTotExentRetiradoAnioInmAnt" runat="server" 
     ToolTip="Atributo opcional que expresa el  monto total exento del retiro realizado en el ejercicio inmediato anterior" 
      CssClass="form-control"></asp:TextBox>
       
  
     <asp:FilteredTextBoxExtender ID="txtMontIntRealesDevengAniooInmAnt0_FilteredTextBoxExtender" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotExentRetiradoAnioInmAnt" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotExentRetiradoAnioInmAnt" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
  
    </div>
   </div>
<div class = "row">
       <div class="col-lg-1"></div>
       <div class = "form-group col-lg-3">
           <asp:Label ID="Label15" runat="server" Text="MontTotAportAnioInmAnterior"></asp:Label>
    <asp:TextBox ID="txtMontTotAportAnioInmAnterior" runat="server"
      ToolTip="Atributo opcional que expresa el monto total de las aportaciones actualizadas en el año inmediato anterior de los planes personales de retiro" 
      CssClass="form-control"></asp:TextBox>
     
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotAportAnioInmAnterior" />
    
    <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotAportAnioInmAnterior" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
  
    </div>
      <div class = "form-group col-lg-3">
       <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
          <asp:Label ID="Label16" runat="server" Text="MontIntRealesDevengAniooInmAnt"></asp:Label>
  
    <asp:TextBox ID="txtMontIntRealesDevengAniooInmAnt" runat="server" 
     ToolTip="Atributo requerido para expresar el  monto de los intereses reales devengados o percibidos durante el año inmediato anterior de los planes personales de retiro" 
      CssClass="form-control"></asp:TextBox>
     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMontIntRealesDevengAniooInmAnt" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
       
  
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontIntRealesDevengAniooInmAnt" />
    
     <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtMontIntRealesDevengAniooInmAnt" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion" />
       
</div>
      <div class = "form-group col-lg-3">
        <asp:Label ID="Label17" runat="server" Text="MontTotRetiradoAnioInmAntPer"></asp:Label>
    <asp:TextBox ID="txtMontTotRetiradoAnioInmAntPer"  runat="server"
    ToolTip="Atributo opcional que expresa el monto total del retiro realizado antes de cumplir con los requisitos de permanencia" 
    CssClass="form-control"></asp:TextBox>
                       
     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotRetiradoAnioInmAntPer" />

    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotRetiradoAnioInmAntPer" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
</div>
    </div>

<div class = "row">
       <div class="col-lg-1"></div>
       <div class = "form-group col-lg-3">
          <asp:Label ID="Label18" runat="server" Text="MontTotExedenteAnioInmAnt"></asp:Label>
    <asp:TextBox ID="txtMontTotExedenteAnioInmAnt" runat="server"
      ToolTip="Atributo opcional que expresa  el monto total excedente del monto exento del retiro realizado en el ejercicio inmediato anterior" 
     CssClass="form-control"></asp:TextBox>
     
        <asp:FilteredTextBoxExtender ID="txtMontTotAportAnioInmAnterior0_FilteredTextBoxExtender" 
        runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotExedenteAnioInmAnt" />
      <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotExedenteAnioInmAnt" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>
           </div>
      <div class = "form-group col-lg-3">
      
    <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
           <asp:Label ID="Label19" runat="server" Text="HuboRetirosAnioInmAnt"></asp:Label>
       
    <asp:DropDownList ID="ddlHuboRetirosAnioInmAnt" runat="server" CssClass="form-control"
     ToolTip="Atributo requerido que expresa si se realizaron retiros en el ejercicio inmediato anterior"
    >
        <asp:ListItem>SI</asp:ListItem>
        <asp:ListItem>NO</asp:ListItem>
    </asp:DropDownList>
    </div>
      <div class = "form-group col-lg-3">
           <asp:Label ID="Label20" runat="server" Text="MontTotRetiradoAnioInmAnt"></asp:Label>
    <asp:TextBox ID="txtMontTotRetiradoAnioInmAnt" runat="server" 
     ToolTip="Atributo opcional que expresa el monto total del retiro realizado en el ejercicio inmediato anterior" 
      CssClass="form-control"></asp:TextBox>
         
     <asp:FilteredTextBoxExtender ID="txtMontIntRealesDevengAniooInmAnt0_FilteredTextBoxExtender0" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontTotRetiradoAnioInmAnt" />
     <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" Display="Dynamic"
    ControlToValidate="txtMontTotRetiradoAnioInmAnt" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?\d?\d?\d?" ValidationGroup="GeneraRetencion"/>

    </div>
    </div>
<div class = "row">
       <div class="col-lg-1"></div>
       <div class = "form-group col-lg-3">
                      <asp:Label ID="Label21" runat="server" Text="NumReferencia"></asp:Label>
<asp:TextBox ID="txtNumReferencia" runat="server" CssClass="form-control" 
               
        ToolTip="Atributo opcional que expresa el número de referencia, contrato o cuenta con la que identifica la institución a su cliente."></asp:TextBox>
   </div>
    </div>
<div class = "row">
       <div class = "form-group col-lg-2">
          <br />
 
       <asp:CheckBox ID="chActivar" runat="server" style="text-align: left" 
        Text="Activar" oncheckedchanged="chActivar_CheckedChanged" CssClass="form-control"
           AutoPostBack="True" />
        </div>
       <div class = "form-group col-lg-3">
        <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
           <asp:Label ID="Label22" runat="server" Text="SistemaFinanc"></asp:Label>
     <asp:DropDownList ID="ddlSistemaFinanc1" runat="server" CssClass="form-control"
     ToolTip="Atributo requerido que identifica el tipo de aportación o depósito que se realiza al plan de retiro." >
        <asp:ListItem>a</asp:ListItem>
        <asp:ListItem>b</asp:ListItem>
        <asp:ListItem>c</asp:ListItem>
    </asp:DropDownList>
    </div>
    <div class = "form-group col-lg-3">
       <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:Label ID="Label23" runat="server" Text="MontAportODep"></asp:Label>
    <asp:TextBox ID="txtMontAportODep" runat="server"
      ToolTip="Atributo requerido que expresa el monto de las aportaciones o depósitos efectuados al plan de retiro." 
      CssClass="form-control" Enabled="False"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic" Enabled="false"
              ControlToValidate="txtMontAportODep" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
     
        <asp:FilteredTextBoxExtender ID="txtMontAportODep_FilteredTextBoxExtender0" 
        runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontAportODep" />
    </div>
       <div class = "form-group col-lg-3">
       <asp:Label ID="Label24" runat="server" Text="RFCFiduciaria"></asp:Label>
     <asp:TextBox ID="txtRFCFiduciaria" runat="server" CssClass="form-control" 
        
        ToolTip="Atributo opcional que expresa el RFC de la fiduciaria de fungió como administrador del plan de pensiones, cuando se trate de aportaciones realizadas de conformidad con el artículo 258 del Reglamento de la LISR, se vuelve requerido cuando el administrador del plan es una fiduciaria." 
        Enabled="False"></asp:TextBox>
    </div>
</div>
<div class = "row">
       <div class = "form-group col-lg-2">
          <br />
       <asp:CheckBox ID="chActivar2" runat="server" style="text-align: left" 
        Text="Activar" oncheckedchanged="chActivar2_CheckedChanged" CssClass="form-control"
           AutoPostBack="True" />
        </div>
      <div class = "form-group col-lg-3">
      <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
             <asp:Label ID="Label25" runat="server" Text="SistemaFinanc"></asp:Label>
    <asp:DropDownList ID="ddlSistemaFinanc2" runat="server" CssClass="form-control"
     ToolTip="Atributo requerido que identifica el tipo de aportación o depósito que se realiza al plan de retiro." >
        <asp:ListItem>a</asp:ListItem>
        <asp:ListItem>b</asp:ListItem>
        <asp:ListItem>c</asp:ListItem>
    </asp:DropDownList>
    </div>
      <div class = "form-group col-lg-3">
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
       <asp:Label ID="Label26" runat="server" Text="MontAportODep"></asp:Label>
    <asp:TextBox ID="txtMontAportODep2" runat="server"
      ToolTip="Atributo requerido que expresa el monto de las aportaciones o depósitos efectuados al plan de retiro." 
      CssClass="form-control" Enabled="False"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic" Enabled="false"
              ControlToValidate="txtMontAportODep2" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" 
        runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontAportODep2" />
    </div>
      <div class = "form-group col-lg-3">
             <asp:Label ID="Label27" runat="server" Text="RFCFiduciaria"></asp:Label>
        <asp:TextBox ID="txtRFCFiduciaria2" runat="server" CssClass="form-control" 
               ToolTip="Atributo opcional que expresa el RFC de la fiduciaria de fungió como administrador del plan de pensiones, cuando se trate de aportaciones realizadas de conformidad con el artículo 258 del Reglamento de la LISR, se vuelve requerido cuando el administrador del plan es una fiduciaria." 
        Enabled="False"></asp:TextBox>
   </div>
</div>
<div class = "row">
       <div class = "form-group col-lg-2">
          <br />
       <asp:CheckBox ID="chActivar3" runat="server" style="text-align: left" 
        Text="Activar" oncheckedchanged="chActivar3_CheckedChanged" CssClass="form-control"
           AutoPostBack="True" />
        </div>
         <div class = "form-group col-lg-3">
        <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
                  <asp:Label ID="Label28" runat="server" Text="SistemaFinanc"></asp:Label>
    <asp:DropDownList ID="ddlSistemaFinanc3" runat="server" CssClass="form-control"
     ToolTip="Atributo requerido que identifica el tipo de aportación o depósito que se realiza al plan de retiro." >
        <asp:ListItem>a</asp:ListItem>
        <asp:ListItem>b</asp:ListItem>
        <asp:ListItem>c</asp:ListItem>
    </asp:DropDownList>
    </div>
         <div class = "form-group col-lg-3">
        <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
           <asp:Label ID="Label29" runat="server" Text="MontAportODep"></asp:Label>
    <asp:TextBox ID="txtMontAportODep3" runat="server"
      ToolTip="Atributo requerido que expresa el monto de las aportaciones o depósitos efectuados al plan de retiro." 
      CssClass="form-control" Enabled="False"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ErrorMessage="Requerido" Display="Dynamic" Enabled="false"
              ControlToValidate="txtMontAportODep3" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
     
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" 
        runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontAportODep3" />
    
    </div>
      <div class = "form-group col-lg-3">
              <asp:Label ID="Label30" runat="server" Text="RFCFiduciaria"></asp:Label>
        <asp:TextBox ID="txtRFCFiduciaria3" runat="server" CssClass="form-control" 
        
        ToolTip="Atributo opcional que expresa el RFC de la fiduciaria de fungió como administrador del plan de pensiones, cuando se trate de aportaciones realizadas de conformidad con el artículo 258 del Reglamento de la LISR, se vuelve requerido cuando el administrador del plan es una fiduciaria." 
        Enabled="False"></asp:TextBox>
    </div>
    </div>

