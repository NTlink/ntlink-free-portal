<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectorFinanciero.ascx.cs" Inherits="GafLookPaid.controles.SectorFinanciero" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>




<hr width="100%" align="left"> 
     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label2" runat="server" Text="Sector Financiero" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
<div class = "row">
       <div class="col-lg-1"></div>
            <div class = "form-group col-lg-3">
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label5" runat="server" Text="IdFideicom"></asp:Label>
    <asp:TextBox ID="txtIdFideicom" runat="server" CssClass="form-control"
    ToolTip="Atributo requerido para expresar el Identificador o Número del Fideicomiso" 
   ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtIdFideicom" Display="Dynamic" style="color: #F72020" ErrorMessage="*Requerido" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
        
                        </div>
         <div class = "form-group col-lg-3">
       <asp:Label ID="Label1" runat="server" Text="NomFideicom"></asp:Label>
        <asp:TextBox ID="txtNomFideicom" runat="server" CssClass="form-control"
         ToolTip="Atributo opcional para expresar el Nombre del Fideicomiso" 
         ></asp:TextBox>
         </div>
    <div class = "form-group col-lg-3">
     
    <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
     <asp:Label ID="Label4" runat="server" Text="DescripFideicom"></asp:Label>
    <asp:TextBox ID="txtDescripFideicom" runat="server" CssClass="form-control"
    ToolTip="Atributo requerido para expresar el objeto o fin del Fideicomiso" 
    ></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" style="color: #F72020" ErrorMessage="*Requerido" Display="Dynamic"
              ControlToValidate="txtDescripFideicom" ValidationGroup="GeneraRetencion"></asp:RequiredFieldValidator>
           </div>
    </div>
