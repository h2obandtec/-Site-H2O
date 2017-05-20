<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebH2O.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>H2O Web</title>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" />
    
    <style>
        #background_h2o {
            background-image: url('/assets/imagens/logo.jpeg');
             padding-top: 250px;
            background-attachment: relative;
            background-position: center center;
            min-height: 700px;
            width: 100%;
            -webkit-background-size: 100%;
            -moz-background-size: 100%;
            -o-background-size: 100%;
            background-size: 100%;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        #vida {
             font-family: 'Homemade Apple', cursive;
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
            <li><a href="/cadastro.aspx">Cadastre-se</a></li>
            <li><a href="#about">Sobre</a></li>
            <li><a href="#contact">Produto</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- ********** HEADER ********** -->
	<section id="home"></section>
	<div id="background_h2o">
	    <div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1 id="vida">Água é vida!</h1>
				</div>
			</div>
	    </div><!-- /.container -->
	</div><!--/H -->

    <!-- ********** WHITE SECTION - CTA ********** -->
	<section id="login"></section>
	<div class="container">
		<form runat="server">
          <div class="form-login">
                        <h3 class="centered">Faça seu Login</h3>
                        <label>Login</label>
                        <asp:TextBox id="userName" class="form-control input-sm chat-input" runat="server" placeholder="Digite seu email" />
                        <label>Senha</label>
                        <asp:TextBox id="userPassword" class="form-control input-sm chat-input" runat="server" placeholder="Digite sua senha" />
                        <asp:Button class="btn btn-primary btn-md" Text="Login" runat="server" />
              </div>
              </form>
	</div><!--/container -->

	
    <section id="about"></section>
    
    <!-- ********** WHITE SECTION - IMAGE PHONE ********** -->
    <div id="section-semestre1">
	<div class="container">
		<div class="row mtb">
            <div class="col-md-7">
				<img class="img-responsive aligncenter" src="http://www.landingsumo.com/demos/Theme%2016/assets/img/phone.png" width="320"/>
			</div>
			<div class="col-md-5">
				<h1 class="mb">1º Semestre - ADS</h1>
				<p>Desde agosto de 2012, São Paulo passa por uma crise no abastecimento de água. Devido à falta de chuvas, alto consumo e sistema hidráulico com certas falhas, o Paulistano começou a se preocupar com o consumo de água em suas residências. O trabalho propõe um protótipo para melhorar o controle do consumo de água residencial em tempo real, permitindo que o usuário conheça seu perfil de consumo e horas do dia em que mais se consome água. O protótipo foi criado com a utilização do arduíno na disciplina de Escritório de Projetos 1 e o grupo ficou em 1º (primeiro) lugar na Mostra de Escritório de Projetos da BandTec.</p>
			</div>
		</div><!--/row -->
	</div><!--/container-->
        </div>

    <!-- ********** WHITE SECTION - IMAGE PHONE ********** -->
	<div class="container">
		<div class="row mtb">
			<div class="col-md-5">
				<h1 class="mb">2º Semestre - ADS</h1>
				<p>A proposta desse semestre foi criar um aplicativo que utiliza as ferramentas App Inventor, Fusion Tables e a geolocalização. Dando continuidade ao projeto do semestre anterior criamos um aplicativo que torna possível o acesso fácil as informações geradas pelo protótipo que faz a medição do fluxo de água em tempo real.
Para desenvolvimento do aplicativo foi utilizado a ferramenta App Inventor, que tem como objetivo tornar possível a criação de aplicativos para o sistema operacional Android por pessoas que tenham pouco conhecimento em programação. Através de blocos é possível montar a estrutura de programação com as funcionalidades proposta para criação do aplicativo, além de seu designer.</p>
			</div>
			
			<div class="col-md-7">
				<img class="img-responsive aligncenter" src="http://www.landingsumo.com/demos/Theme%2016/assets/img/phone.png" width="320"/>
			</div>
		</div><!--/row -->
	</div><!--/container-->

	<div id="section-semestre3">
		<div class="container">
			<div class="row mtb">
                <div class="col-md-7">
				<img class="img-responsive aligncenter" src="http://www.landingsumo.com/demos/Theme%2016/assets/img/phone.png" width="320"/>
			</div>
                <div class="col-md-5">
					<h1 class="mb">3º Semestre - ADS</h1>
					<p>O objetivo deste semestre é criar um projeto com solução inovadora para problema do cotidiano utilizando C# e .Net(Web Forms) acessando banco de dados, Bootstrap e Jquery, capaz de mostrar em tempo real ao usuário o consumo de água em um determinado local. 
No MVP definido no projeto será permitir ao usuário do sistema H2O o acesso aos dados gerados pelo dispositivo físico que serão enviados para o banco de dados e poderá ser acessado através da aplicação web desenvolvida pelo grupo. Através da aplicação, será permitido acesso a relatórios com os dados, acompanhamento do consumo em tempo real e opção para solicitação de compra.</p>
			</div><!--/row -->
            </div>
		</div><!--/container -->
	</div>	

    <!-- Team Section -->
    <section id="team" class="grey">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Nosso time</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/1.jpg" class="img-responsive img-circle" alt=""/>
                        <h4>Arthur Ramos</h4>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/2.jpg" class="img-responsive img-circle" alt=""/>
                        <h4>Guilherme Tavares</h4>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/3.jpg" class="img-responsive img-circle" alt=""/>
                        <h4>Vivian Silva</h4>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

	
	<!-- ********** FOOTER ********** -->
	<div id="rodape">
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
