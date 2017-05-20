<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="WebH2O.Produto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>H2O Produto</title>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" />
 <style>
        .poster{
            padding-left: 65px;
            padding-top:60px
        }
    </style>
</head>
<body>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">H2O Web</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
               <li><a href="#login">Login</a></li>
            <li><a href="#home">Cadastre-se</a></li>
            <li><a href="#about">Sobre</a></li>
            <li><a href="#contact">Produto</a></li>
          </ul>
        </div><!--/.nav-collapse -->
          </div>
    </div>

          <div class="poster">
              <img src="/assets/imagens/poster.jpg" alt="Banner" width="1200" />
          </div>

    <!-- ********** FOOTER ********** -->
	<div id="f">
		<div class="container">
			<div class="row">
                <div class="col-md-6 centered"> <img src="/assets/imagens/logo_bandtec.png" alt="BandTec" /></div>
				<div class="col-md-6 centered">
					<h5>h2o.bandtec@gmail.com</h5>
				</div>
			</div>
		</div>
	</div><!--/F -->
      
</body>
</html>
