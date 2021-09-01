<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Beneficiario.ascx.cs" Inherits="GafLookPaid.controles.Beneficiario" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>



     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label2" runat="server" Text="Beneficiarios" Font-Bold="True" 
        style="font-size:small"></asp:Label>
                        </div>
         </div>
<div class = "row">
       <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">


    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label1" runat="server" Text="RFC"></asp:Label>

        <asp:TextBox ID="txtRFC" runat="server" 
        
            ToolTip="Atributo requerido para expresar la clave del registro federal de contribuyentes del representante legal en México" CssClass="form-control"
        ></asp:TextBox>
                        


        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtRFC" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
         
       <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" Display="Dynamic"
    ControlToValidate="txtRFC" ErrorMessage="Dato invalido" ValidationExpression="[A-Z,Ñ,&amp;]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,0-9][A-Z,0-9][0-9,A-Z]" ValidationGroup="GeneraRetencion"/>

</div>
      <div class = "form-group col-lg-3">

    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label5" runat="server" Text="CURP"></asp:Label>
        <asp:TextBox ID="txtCURP" runat="server" 
        
            ToolTip="Atributo requerido para la expresión de la CURP del representante legal" CssClass="form-control"
        ></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ErrorMessage="*Requerido" Display="Dynamic"
              ControlToValidate="txtCURP" ValidationGroup="GeneraRetencion" style="color: #F72020"></asp:RequiredFieldValidator>
     
          <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtCURP" ErrorMessage="*Dato invalido" ValidationExpression="[A-Z][A,E,I,O,U,X][A-Z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][M,H][A-Z]{2}[B,C,D,F,G,H,J,K,L,M,N,Ñ,P,Q,R,S,T,V,W,X,Y,Z]{3}[0-9,A-Z][0-9]" ValidationGroup="GeneraRetencion" style="color: #F72020"/>

    </div>
    </div>
<div class = "row">
       <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">

    <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label9" runat="server" Text="NomDenRazSocB"></asp:Label>
    <asp:TextBox ID="txtNomDenRazSocB" runat="server"
      ToolTip="Atributo requerido para expresar el nombre, denominación o razón social del contribuyente en México" 
      CssClass="form-control"></asp:TextBox><br />
       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtNomDenRazSocB" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
  </div>
<div class = "form-group col-lg-3">

<asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:Label ID="Label10" runat="server" Text="ConceptoPago"></asp:Label>
    <asp:DropDownList ID="ddlConceptoPago" runat="server" CssClass="form-control"
      ToolTip="Atributo requerido para expresar  el tipo contribuyente sujeto a la retención, conforme al catálogo" >

    <asp:ListItem Value="1"> 1 (Artistas, deportistas y espectáculos públicos)</asp:ListItem>
    <asp:ListItem Value="2"> 2 (Otras personas físicas)</asp:ListItem>
    <asp:ListItem Value="3"> 3 (Persona moral)</asp:ListItem>
    <asp:ListItem Value="4"> 4 (Fideicomiso)</asp:ListItem>
    <asp:ListItem Value="5"> 5 (Asociación en participación)</asp:ListItem>
    <asp:ListItem Value="6"> 6 (Organizaciones Internacionales o de gobierno)</asp:ListItem>
    <asp:ListItem Value="7"> 7 (Organizaciones exentas)</asp:ListItem>
    <asp:ListItem Value="8"> 8 (Agentes pagadores)</asp:ListItem>
    <asp:ListItem Value="9"> 9 (Otros)</asp:ListItem>

    </asp:DropDownList>
    </div>
    </div>
<div class = "row">
       <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">

    <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
       <asp:Label ID="Label11" runat="server" Text="DescripcionConcepto"></asp:Label>
        <asp:TextBox ID="txtDescripcionConcepto" runat="server" 
              ToolTip="Atributo requerido para expresar la descripción de la definición del pago del residente en el extranjero" 
            CssClass="form-control"    ></asp:TextBox>    
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtDescripcionConcepto" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
       </div>
    </div>