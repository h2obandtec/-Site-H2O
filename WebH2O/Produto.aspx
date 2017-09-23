<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="WebH2O.Produto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/imagens/icone.png" rel="icon" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>H2O Produto</title>
    <link href="assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />

</head>
<body>

    <!-- ********** HEADER ********** -->
    <nav class="navbar navbar-default navbar-fixed-top"">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img src="assets/imagens/H2O_logo.png" alt="Logo H2O" width="90" />
            </div>


            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="cadastro.aspx">Cadastre-se</a></li>
                    <li><a href="#about">Sobre</a></li>
                    <li class="active"><a href="produto.aspx">Produto</a></li>
                    <li><a href="default.aspx#team">Nosso time</a></li>

                </ul>
                <form id="signin" class="navbar-form navbar-right" role="form" runat="server">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox runat="server" class="form-control" ID="txtEmail" placeholder="Digite seu email" />
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox runat="server" class="form-control" ID="txtSenha" placeholder="Digite sua senha" />
                    </div>
                    <asp:Button Text="Login" CssClass="btn btn-primary" runat="server" /> 
                </form> 

            </div>
        </div>
    </nav>

	<!-- ********** SECTION ********** -->

	<div class="container">
		<div class="row" style="margin-top:100px">
			<div class="col-md-3">
				<img src="assets/imagens/logo_bandtec.png" alt="Logo BandTec" width="180"/>
			</div>
			<div class="col-md-9 text-center text-danger">
				<h1>Sistema de Monitoramento de Consumo de Água em Tempo Real</h1>
			</div>
			<div class="col-md-12 text-center">
				<p>Arthur Ramos da Silva, Daniel José Vieira, Vivian Silva</p>
				<p>Orientador: Professor Carlos Rafael Gimenes das Neves</p>
				<p>Alunos do Curso de Tecnologia em Análise e Desenvolvimento de Sistemas – 1º Semestre Noturno – BandTec – São Paulo – SP</p>

			</div>
			<div class="col-sm-4">
				<h4>INTRODUÇÃO</h4>
				<p class="text-justify">Nos anos de 2014 e 2015, São Paulo passou pela pior crise hídrica dos últimos 84 anos. O sistema Cantareira, que atendia 9 milhões de pessoas só na região metropolitana da cidade, por causa da crise, conseguia abastecer apenas 5,7 milhões [FOLHADESAOPAULO, 2015]. Com esse cenário, cada dia mais torna-se necessária a implementação de efetivas políticas públicas e privadas, visando o bom uso da água em todas as relações sociais e humanas. Existem diversas maneiras de utilizar a água de maneira consciente:</p>
				<ul>
					<li>Utilizar regador no lugar de mangueira para regar as plantas.</li>
					<li>Usar vassoura para varrer o chão e não a água da mangueira.</li>
					<li>Lavar o carro com balde ao invés de mangueira.</li>
				</ul>
				<p class="text-justify">Além de todas essas técnicas, o autoconhecimento sobre o consumo é outra excelente forma para economizar água. Se a pessoa souber as horas e os dias que mais gasta água, ela pode identificar quais atividades do dia-a-dia consomem mais. Assim, decidiu-se criar um protótipo, utilizando o Arduino, para auxiliar a pessoa a monitorar seu consumo de água diário. Como o protótipo fornece os dados do consumo em tempo real, ele também pode contribuir para aumentar a previsibilidade da conta d’água ao final do mês.</p>

				<h4>OBJETIVO</h4>
				<p class="text-justify">O objetivo do projeto é criar um protótipo que permite o acompanhamento em tempo real do consumo residencial de água, visando melhorar tanto o conhecimento como uma maior economia do consumo de água.</p>
			
				<h4>JUSTIFICATIVA</h4>
				<p class="text-justify">Recentemente o estado de São Paulo passou pela pior crise hídrica dos últimos 84 anos; o desperdício comum acabou tornando tudo ainda mais grave. Somente na região metropolitana de São Paulo são desperdiçados diariamente 2,777 bilhões de litros de água potável, ou seja, 1/3 do que é distribuído nessa região[IG, 2014]. O envelhecimento dos canos (parte deles já centenários) é a principal causa de perdas de água nas tubulações da Sabesp; o desperdício chega a 19,4% de água tratada [FOLHADESPAULO, 2015].</p>
				<p class="text-justify">O protótipo será instalado na rede hidráulica da residência e ficará mostrando o consumo de água continuamente em um visor instalado na residência. Com isto, o usuário será alertado sobre seu consumo, evitando desperdícios, e poderá identificar vazamentos instantaneamente.</p>
			</div>
			<div class="col-sm-4 text-justify">
				<h4>METODOLOGIA</h4>
				<p>Na confecção do projeto H2O foram aplicados conhecimentos adquiridos em aulas, além de pesquisas sobre a plataforma Arduino. Os principais componentes utilizados foram a própria plataforma Arduino, display tipo LCD, potenciômetro, sensor de vazão de água, tubos e conexões hidráulicas.</p>
				<img src="assets/imagens/fritzing.png" alt="Cabeamento da Protoboard" width="300" />
				<p>O algoritmo utilizado no programa tem como função receber dados, realizar operações e grava-los em um cartão micro SD, esses dados são enviados pelo sensor de vazão, a cada volta que a válvula da com a passagem da agua ela envia um sinal eletromagnético passando o valor de 0 para 1 (Rising), com isso o programa calcula a quantidade de litros que está sendo consumida no momento e transmite em tempo real para o display LCD. O programa foi configurado para a cada 10 segundos gravar a informação em um arquivo chamado consumo.txt no cartão micro SD.</p>

				<h4>CONCLUSÃO</h4>
				<p>Para melhorar o consumo, o protótipo pode ajudar a ter uma base de informações onde o consumidor não terá surpresas na conta de água e ainda pode solucionar os problemas em relação ao consumo excessivo. A demonstração da utilização da água em tempo real nos proporciona o controle de gastos, o conhecimento de vazamentos, além de poder realizar a conferência com a conta que recebemos em nossas casas.</p>
				<p>O trabalho confirmou a importância da água em nossas vidas e como é importante o consumo consciente. Para fazermos a nossa parte, todos os testes que realizamos, a água foi reutilizada para fins sanitários e de limpeza dentro do colégio Bandeirantes.</p>

			</div>
			<div class="col-sm-4">
				
				<h4>PROJETO FUTURO</h4>
				<p>Uma melhoria para ser aplicada ao protótipo é o conceito de IoT (internet das coisas). IoT é uma evolução da comunicação máquina-máquina via internet. Ela viabiliza a conexão de diversos aparelhos eletrônicos, sem que haja interação humana [TECHTUDO,2014].</p>
				<p>A ideia é que o protótipo seja instalado na rede hidráulica da residência e que monitore o consumo ininterruptamente. Os valores de consumo serão enviados para um concentrador instalado na nuvem, para então, ser processado e armazenado em uma base de dados.</p>
				<p>Isso permitirá que o consumidor monitore em tempo real o consumo de água da sua residência, através de uma interface web. Além desse monitoramento, pretende-se criar uma notificação ativa, onde o dono da residência será notificado via um aplicativo instalado no seu celular, ou mensagem SMS quando seu consumo exceder o limite preestabelecido.</p>

				<h4>REFERÊNCIAS</h4>
				<p>IMERCIO, Aline; CALIXTO, Bruno. Crise da água em São Paulo: Quanto falta para o desastre?. ÉPOCA, jul. 2014. Disponível em: http://epoca.globo.com/colunas-e-blogs/blog-do-planeta/noticia/2014/06/crise-da-agua-em-sao-paulo-quanto-falta-para-bo-desastreb.html Acesso em: 2 jun. 2016.</p>
				<p>UOL. Nível do Cantareira sobe para 22,9, oitava alta consecutiva. ESTADÃO, São Paulo, dez. 2015. Disponível em: http://noticias.uol.com.br/ultimas-noticias/agencia-estado/2015/12/10/nivel-do-cantareira-sobe-pelo-8-dia.htm Acesso em: 2 jun.2016.</p>
				<p>ZYLBERKAN, Mariana; LOBEL, Fabricio. Paulistanos reclamam de falta de água após Alckmin “ decretar” fim da crise. ESTADÃO, mar. 2016. Disponível em: http://www1.folha.uol.com.br/cotidiano/2016/03/1747910-sp-reclama-de-falta-de-agua-apos-decreto-de-fim-da-crise.shtml Acesso em: 2 jun.2016.</p>
				<p>OMEGA. O que é um medidor de Vazão seus tipos. Disponível em: http://br.omega.com/prodinfo/o-que-e-um-medidor-de-vazao.html acesso em: 2  jun. 2016.</p>
				<p>INBS. A falta de água no mundo, agora e no futuro, abr. 2015. Disponível em: http://www.inbs.com.br/a-falta-de-agua-no-mundo-agora-e-no-futuro/ Acesso em: 2 jun. 2016.</p>
			</div>
		</div>
	</div>

    <!-- ********** FOOTER ********** -->
    <div id="rodape">
        <div class="container">
            <div class="row">
                <div class="col-md-6 centered">
                    <img src="/assets/imagens/logo_bandtec.png" alt="BandTec" width="150" />
                </div>
                <div class="col-md-6 centered">
                    <h5>h2o.bandtec@gmail.com</h5>
                </div>
            </div>
        </div>
    </div>
    <!--/F -->

</body>
</html>
