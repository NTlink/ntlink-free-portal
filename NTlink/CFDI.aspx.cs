
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gratuito
{
    public partial class CFDI : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
        
            }


        }
        protected void lnkDelete2_Click(object sender, EventArgs e)
        {
            //Write the code here to delete the record

            lblError.Text = "ricardin";
        }

        protected void btnGenerarFactura_Click(object sender, EventArgs e)
        {
          
        }
        private void Clear()
        {
            this.txtCodigo.Text = this.txtDescripcion.Text = this.txtPrecio.Text =
                this.txtCantidad.Text = txtNoIdentificacion.Text = txtDescuento.Text = txtUnidad.Text = string.Empty;
        }

        private void ClearAll()
        {
        }

        private bool Validar()
        {
          

            return true;
        }
        protected void mainOK_OnClick(object sender, EventArgs e)
        {

        }

        protected void ddlMoneda_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlMoneda.SelectedValue != "MXN")
            {
                txtTipoCambio.Visible = true;
                lblTipoCambio.Visible = true;
            }
            else
            {
                txtTipoCambio.Visible = false;
                lblTipoCambio.Visible = false;
                txtTipoCambio.Text = "";
            }
        }

        protected void cbCfdiRelacionados_CheckedChanged(object sender, EventArgs e)
        {
            if (cbCfdiRelacionados.Checked == true)
            {
                DivCfdiRelacionados.Attributes.Add("style", "display:block;");
            }
            else
            {
                DivCfdiRelacionados.Attributes.Add("style", "display:none;");

            }
        }

        private void BindCfdiRelacionadoToGridView()
        {
            List<string> CfdiRelacionado = ViewState["CfdiRelacionado"] as List<string>;
            if (CfdiRelacionado != null && CfdiRelacionado.Count > 0)
            {
                int noColumns = this.gvCfdiRelacionado.Columns.Count;
                this.gvCfdiRelacionado.Columns[noColumns - 1].Visible = true;
            }
            else
            {
                int noColumns = this.gvCfdiRelacionado.Columns.Count;
                this.gvCfdiRelacionado.Columns[noColumns - 1].Visible = false;
            }


            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("UUID");
            int t = 0;
            foreach (var array in CfdiRelacionado)
            {
                DataRow row1 = table.NewRow();
                row1["ID"] = t + 1;
                row1["UUID"] = array;
                table.Rows.Add(row1);
                t++;
            }

            this.gvCfdiRelacionado.DataSource = table;
            this.gvCfdiRelacionado.DataBind();

        }

        protected void btnCfdiRelacionado_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(txtUUDI.Text))
            {
                List<string> CfdiRelacionado = ViewState["CfdiRelacionado"] as List<string>;
                CfdiRelacionado.Add(txtUUDI.Text);
                ViewState["CfdiRelacionado"] = CfdiRelacionado;
                this.BindCfdiRelacionadoToGridView();

                txtUUDI.Text = "";
            }


        }

        protected void gvCfdiRelacionado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index;

            if (e.CommandName.Equals("deleteRecord"))
            {
                index = Convert.ToInt32(e.CommandArgument);
                //int ID = Convert.ToInt32(gvCfdiRelacionado.DataKeys[index].Value.ToString());
                ViewState["IDCli"] = index;
                hf_DeleteID.Value = ID.ToString();
                //
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("$('#deleteModal').modal({");
                sb.Append("    backdrop: 'static',");
                sb.Append("    keyboard: false");
                sb.Append("});");
                ScriptManager.RegisterStartupScript(Page, this.GetType(), "clientscript", sb.ToString(), true);
            }
        }
        protected void lnkDelete_Click(object sender, EventArgs e)
        {
            var idcliente = ViewState["IDCli"] as int?;
            if (idcliente != null)
            {
                var CfdiRelacionado = ViewState["CfdiRelacionado"] as List<string>;
                CfdiRelacionado.RemoveAt(Convert.ToInt32(idcliente));
                ViewState["CfdiRelacionado"] = CfdiRelacionado;
                this.BindCfdiRelacionadoToGridView();
                UpdatePanel1.Update();
          
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            
                                                         
        }


        private void BindDetallesToGridView()
        {

          
        }


        private void UpdateTotales()
        {

        }


        //--seccion de impuestos----------------------------------------------------------------------------------------
        private void AgregarIVA(string partida)
        {
          
        }

        protected void cbImpuestos_CheckedChanged(object sender, EventArgs e)
        {
            if (cbImpuestos.Checked == true)
            {
                DivImpuestos.Attributes.Add("style", "display:block;");
                ActImpuestos();
            }
            else
            {
                DivImpuestos.Attributes.Add("style", "display:none;");

            }
        }
        private void BindDetallesImpuestosToGridView()
        {

        }

        protected void btnAgregarImpuesto_Click(object sender, EventArgs e)
        {
        }

        protected void ActImpuestos()
        {
            

        }

        protected void ddlTipoImpuesto_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void ACuota()
        {
            if (this.ddlImpuesto.SelectedValue == "003" || (this.ddlImpuesto.SelectedValue == "002" && this.ddlTipoImpuesto.SelectedValue == "Retenciones"))
            {
                ddlTipoFactor.Items.Clear();
                ListItem i1 = new ListItem("Tasa", "Tasa", true);
                ddlTipoFactor.Items.Add(i1);
                ListItem i2 = new ListItem("Cuota", "Cuota", true);
                ddlTipoFactor.Items.Add(i2);
                ListItem i3 = new ListItem("Exento", "Exento", true);
                ddlTipoFactor.Items.Add(i3);
            }
            else
            {
                ddlTipoFactor.Items.Clear();
                ListItem i1 = new ListItem("Tasa", "Tasa", true);
                ddlTipoFactor.Items.Add(i1);
                ListItem i3 = new ListItem("Exento", "Exento", true);
                ddlTipoFactor.Items.Add(i3);
            }
        }

        protected void ddlConceptos_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void ddlTipoFactor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlImpuesto_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        //---------------------------------------------------------------
        protected void gvDetalles_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index;

            if (e.CommandName.Equals("deleteRecord"))
            {
                index = Convert.ToInt32(e.CommandArgument);
                //int ID = Convert.ToInt32(gvCfdiRelacionado.DataKeys[index].Value.ToString());
                ViewState["IDConcepto"] = index;
                hf_DeleteID.Value = ID.ToString();
                //
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("$('#deleteModalConcepto').modal({");
                sb.Append("    backdrop: 'static',");
                sb.Append("    keyboard: false");
                sb.Append("});");
                ScriptManager.RegisterStartupScript(Page, this.GetType(), "clientscript", sb.ToString(), true);
            }
        }

        protected void bntEliminarConcepto_Click(object sender, EventArgs e)
        {
        }

        protected void bntEliminarImpuesto_Click(object sender, EventArgs e)
        {
     
        }

        protected void gvImpuestos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index;

            if (e.CommandName.Equals("deleteRecord"))
            {
                index = Convert.ToInt32(e.CommandArgument);
                //int ID = Convert.ToInt32(gvCfdiRelacionado.DataKeys[index].Value.ToString());
                ViewState["IDImpuesto"] = index;
                hf_DeleteID.Value = ID.ToString();
                //
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("$('#deleteModalImpuesto').modal({");
                sb.Append("    backdrop: 'static',");
                sb.Append("    keyboard: false");
                sb.Append("});");
                ScriptManager.RegisterStartupScript(Page, this.GetType(), "clientscript", sb.ToString(), true);
            }
        }

        private static string numerodecimales(decimal d, int moneda)
        {
            string D = "0";
            if (moneda == 1)
                D = d.ToString("F1");
            if (moneda == 2)
                D = d.ToString("F2");
            if (moneda == 3)
                D = d.ToString("F3");
            if (moneda == 4)
                D = d.ToString("F4");
            if (moneda == 5)
                D = d.ToString("F5");
            if (moneda == 6)
                D = d.ToString("F6");
            return (D);
        }

        protected void ddlMetodoPago_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlMetodoPago.SelectedValue == "PPD")
            {
                ddlFormaPago.SelectedValue = "99";
            }

        }

        protected void ddlFormaPago_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlFormaPago.SelectedValue == "99")
            {
                ddlMetodoPago.SelectedValue = "PPD";
            }
            else
            {
                ddlMetodoPago.SelectedValue = "PUE";

            }
        }

        protected void BtnVistaPrevia_Click(object sender, EventArgs e)
        {
            if (Validar())
            {


            }
        }
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            ClearAll();
        }
    }
    }