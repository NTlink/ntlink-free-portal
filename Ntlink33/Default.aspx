<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ntlink33._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
   

            <style type="text/css">
               
        .overrideClass
        {
            left: 0px !important;
            top: 0px !important;
        }

        .bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn) {
    width: 100%;
}
                
                .bootstrap-select.btn-group .dropdown-menu.inner {
                max-width:300px;
                
                }

              .optionAlinear {
   text-align:left;   
}

.input-group:not(.has-validation) > :not(:last-child):not(.dropdown-toggle):not(.dropdown-menu),
.input-group:not(.has-validation) > .dropdown-toggle:nth-last-child(n+3) {
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
    width: 100%;
}

    </style>
      

   
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>--%>

      <div class="panel panel-default" style="width:100%">
	  
          <div class="panel-heading" >
              <h4 class="panel-title">
            <a>
                 <b>   NTLINK COMUNICACIONES</b>
            </a>
          </h4>
          </div>
		 
        <div id="Acordion5" >
          <div class="panel-body">
         
               <div class="container-fluid" style="background-color:white; height: 70vh;">
                   
             <img id="imagen" src="Imagen/nominaInicio.png" class="img-fluid"    > 
  
    </div>
              
  <%--  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

  
    <div class="carousel-inner">
        <div class="item active">
              <img class="img-fluid" src="Imagen/nominaInicio.png" alt="Second slide" style="height:100%">
         
            <div class="carousel-caption">
                <h3>Información</h3>
                <p>Bienvenidos a Ntlink </p>
            </div>
        </div>

    </div>

    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
   
   --%>                

            </div>
           </div>
          </div>
    
</asp:Content>
