using System;
using System.Globalization;

namespace ServicioLocalContract
{
    public class CantidadLetra
    {
        public static string Enletras(string num, string divisa)
        {
            CultureInfo culey = new CultureInfo("es-MX");
            var dec = "";
            double nro;
            try
            {
                nro = Convert.ToDouble(num, culey);
                nro = Math.Abs(nro);
            }
            catch
            {
                return "";
            }
            var entero = Convert.ToInt64(Math.Truncate(nro));
            entero = Math.Abs(entero);
            var decimales = Convert.ToInt32(Math.Round((nro - entero) * 100, 2));
            if (decimales > 0)
            {
                dec = decimales.ToString().PadLeft(2, '0') + "/100 ";
            }
            else
            {
                dec = "00/100";
            }
            var res = string.Empty;
            if (divisa.Equals("MXN"))
            {
                res = ToText(Convert.ToDouble(entero)) + " PESOS " + dec + " M.N.";
            }
            else if(divisa.Equals("USD"))
            {
                res = ToText(Convert.ToDouble(entero)) + " DOLARES " + dec + " USD";
            }
            else if (divisa.Equals("EUR"))
            {
                res = ToText(Convert.ToDouble(entero)) + " EUROS " + dec + " EUR";
            }
            else if (divisa.Equals("JPY"))
            {
                res = ToText(Convert.ToDouble(entero)) + " YENES " + dec + " JPY";
            }
            else if (divisa.Equals("CAD"))
            {
                res = ToText(Convert.ToDouble(entero)) + " DOLAR CANADIENSE " + dec + " CAD";
            }
            else if (divisa.Equals("GBP"))
            {
                res = ToText(Convert.ToDouble(entero)) + " LIBRA ESTERLINA " + dec + " GBP";
            }
            else if (divisa.Equals("AUD"))
            {
                res = ToText(Convert.ToDouble(entero)) + " DOLAR AUSTRALIANO " + dec + " AUD";
            }
         

            return res;
        }

        private static string ToText(double value)
        {
            string num2Text;
            value = Math.Truncate(Math.Abs(value));
            if (value == 0) num2Text = "CERO";
            else if (value == 1) num2Text = "UN";
            else if (value == 2) num2Text = "DOS";
            else if (value == 3) num2Text = "TRES";
            else if (value == 4) num2Text = "CUATRO";
            else if (value == 5) num2Text = "CINCO";
            else if (value == 6) num2Text = "SEIS";
            else if (value == 7) num2Text = "SIETE";
            else if (value == 8) num2Text = "OCHO";
            else if (value == 9) num2Text = "NUEVE";
            else if (value == 10) num2Text = "DIEZ";
            else if (value == 11) num2Text = "ONCE";
            else if (value == 12) num2Text = "DOCE";
            else if (value == 13) num2Text = "TRECE";
            else if (value == 14) num2Text = "CATORCE";
            else if (value == 15) num2Text = "QUINCE";
            else if (value < 20) num2Text = "DIECI" + ToText(value - 10);
            else if (value == 20) num2Text = "VEINTE";
            else if (value < 30) num2Text = "VEINTI" + ToText(value - 20);
            else if (value == 30) num2Text = "TREINTA";
            else if (value == 40) num2Text = "CUARENTA";
            else if (value == 50) num2Text = "CINCUENTA";
            else if (value == 60) num2Text = "SESENTA";
            else if (value == 70) num2Text = "SETENTA";
            else if (value == 80) num2Text = "OCHENTA";
            else if (value == 90) num2Text = "NOVENTA";
            else if (value < 100) num2Text = ToText(Math.Truncate(value / 10) * 10) + " Y " + ToText(value % 10);
            else if (value == 100) num2Text = "CIEN";
            else if (value < 200) num2Text = "CIENTO " + ToText(value - 100);
            else if ((value == 200) || (value == 300) || (value == 400) || (value == 600) || (value == 800)) num2Text = ToText(Math.Truncate(value / 100)) + "CIENTOS";
            else if (value == 500) num2Text = "QUINIENTOS";
            else if (value == 700) num2Text = "SETECIENTOS";
            else if (value == 900) num2Text = "NOVECIENTOS";
            else if (value < 1000) num2Text = ToText(Math.Truncate(value / 100) * 100) + " " + ToText(value % 100);
            else if (value == 1000) num2Text = "MIL";
            else if (value < 2000) num2Text = "MIL " + ToText(value % 1000);
            else if (value < 1000000)
            {
                num2Text = ToText(Math.Truncate(value / 1000)) + " MIL";
                if ((value % 1000) > 0) num2Text = num2Text + " " + ToText(value % 1000);
            }
            else if (value == 1000000) num2Text = "UN MILLON";
            else if (value < 2000000) num2Text = "UN MILLON " + ToText(value % 1000000);
            else if (value < 1000000000000)
            {
                num2Text = ToText(Math.Truncate(value / 1000000)) + " MILLONES ";
                if ((value - Math.Truncate(value / 1000000) * 1000000) > 0) num2Text = num2Text + " " + ToText(value - Math.Truncate(value / 1000000) * 1000000);
            }
            else if (value == 1000000000000) num2Text = "UN BILLON";
            else if (value < 2000000000000) num2Text = "UN BILLON " + ToText(value - Math.Truncate(value / 1000000000000) * 1000000000000);
            else
            {
                num2Text = ToText(Math.Truncate(value / 1000000000000)) + " BILLONES";
                if ((value - Math.Truncate(value / 1000000000000) * 1000000000000) > 0) num2Text = num2Text + " " + ToText(value - Math.Truncate(value / 1000000000000) * 1000000000000);
            }

            return num2Text;
        }
    }
}
