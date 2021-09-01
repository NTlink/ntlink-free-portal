<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Pagoaextranjeros.ascx.cs" Inherits="GafLookPaid.controles.Pagoaextranjeros" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register Src="~/controles/NoBeneficiario.ascx" TagPrefix="uc" TagName="UCNoBeneficiario" %>
<%@ Register Src="~/controles/Beneficiario.ascx" TagPrefix="uc" TagName="UCBeneficiario" %>


<style type="text/css">
    .style1 {
        width: 187px;
    }

    .style2 {
        width: 187px;
        height: 26px;
    }

    .style3 {
        height: 26px;
    }
</style>




<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>

<hr width="100%" align="left"> 
     <div class = "row">
                 
                    <div class = "form-group col-lg-12">
       
<asp:Label ID="Label2" runat="server" Text="Pagoaextranjeros Nobeneficiario" Font-Bold="True" 
        style="font-size: medium"></asp:Label>
                        </div>
         </div>
<div class = "row">
       <div class="col-lg-1"></div>
                    <div class = "form-group col-lg-3">
<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"/>
                    <asp:Label runat="server" Text="EsBenefEfectDelCobro:"/>
                    <asp:DropDownList ID="ddlEsBenefEfectDelCobro" runat="server" AutoPostBack="True" CssClass="form-control"
                        OnSelectedIndexChanged="ddlEsBenefEfectDelCobro_SelectedIndexChanged">
                        <asp:ListItem>SI</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
             </div>
    </div>
        <div class = "row">
                    <div class = "form-group col-lg-12">

            <caption>
                <div id="PagosExtranjeros" runat="server" style="width: 100%">
                    <uc:UCBeneficiario ID="beneficiario" runat="server" />
                    <uc:UCNoBeneficiario ID="noBeneficiario" runat="server" />
                </div>
            </caption>
</div>
            </div>

    </ContentTemplate>
</asp:UpdatePanel>
