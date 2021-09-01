using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GafLookPaid
{
    /// <summary>
    /// </summary>
    public class FileHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {
        
        public void ProcessRequest(HttpContext context)
        {
            // var filename =HttpContext.Current.Session["PDF"] as byte[];
            //var bytes = context.Cache.Get(request.QueryString.Get("cacheKey")) as byte[];

           // var filename = context.Session["PDF"] as byte[];

            context.Response.Clear();
            context.Response.ContentType = "application/pdf";
            context.Response.AddHeader("Content-Disposition", "attachment; filename=preview.pdf");
            // context.Response.BinaryWrite(filename);
            context.Response.Write("RGV");
            context.Response.Flush();
            context.Response.End();

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}