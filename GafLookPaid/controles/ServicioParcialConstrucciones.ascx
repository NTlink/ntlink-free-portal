<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServicioParcialConstrucciones.ascx.cs" Inherits="GafLookPaid.controles.ServicioParcialConstrucciones" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

       
              <div class = "row">
                  <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
       
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label1" runat="server"  Text=" Calle"></asp:Label>
    <asp:TextBox ID="txtCalle" runat="server" 
    ToolTip="Este atributo requerido sirve para precisar la avenida, calle, camino o carretera del inmueble" 
   CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtCalle" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>

      </div>
                
                 <div class = "form-group col-lg-3">
       <asp:Label ID="Label2" runat="server"  Text="Colonia"></asp:Label>
          <asp:TextBox ID="txtColonia" runat="server"
          ToolTip="Este atributo opcional sirve para precisar la colonia en donde se da la ubicación del inmueble cuando se desea ser más específico en casos de ubicaciones urbanas." CssClass="form-control"
         ></asp:TextBox>

      
    </div>
   
   <div class = "form-group col-lg-3">
       <asp:Label ID="Label4" runat="server"  Text="NoExterior"></asp:Label>
         <asp:TextBox ID="txtNoExterior" runat="server"
         ToolTip="Este atributo opcional sirve para expresar el número particular en donde se da la ubicación del inmueble en una calle dada." CssClass="form-control"
         ></asp:TextBox>
       </div>
</div>
 <div class = "row">
             <div class="col-lg-1"></div>
          
     <div class = "form-group col-lg-3">
         
    <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label5" runat="server"  Text="NumPerLicoAut"></asp:Label>
     <asp:TextBox ID="txtNumPerLicoAut" runat="server"
         
            ToolTip="Atributo requerido para expresar el número de permiso, licencia o autorización de construcción proporcionado por el prestatario de los servicios parciales de construcción. " CssClass="form-control"
         ></asp:TextBox>
         <br />
         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtNumPerLicoAut" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>
         </div>
      <div class = "form-group col-lg-3">
     <asp:Label ID="Label6" runat="server"  Text="Referencia"></asp:Label>
        <asp:TextBox ID="txtReferencia" runat="server"
              
        ToolTip="Atributo opcional para expresar una referencia adicional de ubicación del inmueble." CssClass="form-control"
         ></asp:TextBox>
          </div>
        <div class = "form-group col-lg-3">
     <asp:Label ID="Label7" runat="server"  Text="NoInterior"></asp:Label>
        <asp:TextBox ID="txtNoInterior" runat="server"
         
        ToolTip="Este atributo opcional sirve para expresar información adicional para especificar la ubicación cuando calle y número exterior (noExterior) no resulten suficientes para determinar la ubicación precisa del inmueble." CssClass="form-control"
          ontextchanged="txtNoInterior_TextChanged"></asp:TextBox>
            </div>
     </div>
<div class = "row">
           <div class="col-lg-1"></div>
      
        <div class = "form-group col-lg-3">
     <asp:Label ID="Label8" runat="server"  Text="Localidad"></asp:Label>
        <asp:TextBox ID="txtLocalidad" runat="server"
          ToolTip="Atributo opcional que sirve para precisar la ciudad o población donde se da la ubicación del inmueble." 
            CssClass="form-control"></asp:TextBox>
            </div>
        <div class = "form-group col-lg-3">
    <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label9" runat="server"  Text="Estado"></asp:Label>
  
        <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control"
     ToolTip="Entidad Federativa donde se ubica el inmueble conforme al catálogo publicado en el portal del SAT en Internet."
    >
      <asp:ListItem Value="01">01 (AGUASCALIENTES)</asp:ListItem>
    <asp:ListItem Value="02">02 (BAJA CALIFORNIA)</asp:ListItem>
    <asp:ListItem Value="03">03 (BAJA CALIFORNIA SUR)</asp:ListItem>
    <asp:ListItem Value="04">04 (CAMPECHE)</asp:ListItem>
    <asp:ListItem Value="05">05 (COAHUILA)</asp:ListItem>
    <asp:ListItem Value="06">06 (COLIMA)</asp:ListItem>
    <asp:ListItem Value="07">07 (CHIAPAS)</asp:ListItem>
    <asp:ListItem Value="08">08 (CHIHUAHUA)</asp:ListItem>
    <asp:ListItem Value="09">09 (DISTRITO FEDERAL)</asp:ListItem>
    <asp:ListItem Value="10">10 (DURANGO)</asp:ListItem>
    <asp:ListItem Value="11">11 (GUANAJUATO)</asp:ListItem>
    <asp:ListItem Value="12">12 (GUERRERO)</asp:ListItem>
    <asp:ListItem Value="13">13 (HIDALGO)</asp:ListItem>
    <asp:ListItem Value="14">14 (JALISCO)</asp:ListItem>
    <asp:ListItem Value="15">15 (MEXICO)</asp:ListItem>
    <asp:ListItem Value="16">16 (MICHOACAN)</asp:ListItem>
    <asp:ListItem Value="17">17 (MORELOS)</asp:ListItem>
    <asp:ListItem Value="18">18 (NAYARIT)</asp:ListItem>
    <asp:ListItem Value="19">19 (NUEVO LEON)</asp:ListItem>
    <asp:ListItem Value="20">20 (OAXACA)</asp:ListItem>
    <asp:ListItem Value="21">21 (PUEBLA)</asp:ListItem>
    <asp:ListItem Value="22">22 (QUERETARO)</asp:ListItem>
    <asp:ListItem Value="23">23 (QUINTANA ROO)</asp:ListItem>
    <asp:ListItem Value="24">24 (SAN LUIS POTOSI)</asp:ListItem>
    <asp:ListItem Value="25">25 (SINALOA)</asp:ListItem>
    <asp:ListItem Value="26">26 (SONORA)</asp:ListItem>
    <asp:ListItem Value="27">27 (TABASCO)</asp:ListItem>
    <asp:ListItem Value="28">28 (TAMAULIPAS)</asp:ListItem>
    <asp:ListItem Value="29">29 (TLAXCALA)</asp:ListItem>
    <asp:ListItem Value="30">30 (VERACRUZ)</asp:ListItem>
    <asp:ListItem Value="31">31 (YUCATAN)</asp:ListItem>
    <asp:ListItem Value="32">32 (ZACATECAS)</asp:ListItem>
    </asp:DropDownList>
            </div>
      <div class = "form-group col-lg-3">
      <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
         <asp:Label ID="Label14" runat="server"  Text="CodigoPostal"></asp:Label>
        <asp:TextBox ID="txtCodigoPostal" runat="server"
         
        ToolTip="Atributo requerido que sirve para asentar el código postal en donde se da la ubicación del inmueble." CssClass="form-control"
         ></asp:TextBox>
         <br />
         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtCodigoPostal" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>
    </div>
    </div>
<div class = "row">
    <div class="col-lg-1"></div>
      
        <div class = "form-group col-lg-3">

    <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
         <asp:Label ID="Label15" runat="server"  Text="Municipio"></asp:Label>
           <asp:TextBox ID="txtMunicipio" runat="server"
                 
        ToolTip="Atributo requerido que sirve para precisar el municipio o delegación (en el caso del Distrito Federal) en donde se da la ubicación del inmueble." CssClass="form-control"
         Width="300px"></asp:TextBox>
         
           <br />
         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtMunicipio" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>

   </div>
</div>
          