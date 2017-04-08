<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="WebH2O.cadastro" %>

<!DOCTYPE html>

<html id="htmlcadastro" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>H2O Cadastro</title>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet"/>
</head>
<body id="bodycadastro">
    <form id="form1" runat="server">

        <section class ="header">
            <div class="div-container">
                <header>
                    <div class="menu-logo">
                        <a href="../index.aspx"><image class="logo" src="/assets/imagens/logo.png" alt="altura"></image> </a>
                    </div>
                </header>
            </div>
        </section>

        <article class="cadastro">

          <div class="usuario">

            <h2 class="NomeCampo">Informações Pessoais</h2>

            <label class="label">ID DO LEITOR</label>
            <asp:TextBox class="box" ID="boxID" runat="server" placeholder="Ex: 178035"/><br />

            <label class="label">NOME</label>
            <asp:TextBox class="box" ID="boxNome" runat="server" placeholder="Ex: João da Silva"/><br />

            <label class="label">CPF</label>
            <asp:TextBox class="box" ID="boxCpf" runat="server" placeholder="Ex: 14789658954"/><br />

            <label class="label">RG</label>
            <asp:TextBox class="box" ID="boxRg" runat="server" placeholder="Ex: 654716241"/>

            <asp:Button class="btnvalidar" Text="Validar" runat="server" OnClick="ValidarNome" />
            <span><asp:Label ID="errousuario" Text="" runat="server" class="erro"/></span>

          </div>

          <div class="endereço">
      
            <h2 class="NomeCampo">Endereço</h2>

            <label class="label">LOGRADOURO</label>
            <asp:TextBox class="box" ID="boxLogradouro" runat="server" placeholder="Ex: Avenida Brasil, 1598"/><br />

            <label class="label">COMPLEMENTO</label>
            <asp:TextBox class="box" ID="boxComplemento" runat="server" placeholder="Ex: Apartamento 33"/><br />

            <label class="label">CEP</label>
            <asp:TextBox class="box" ID="boxCep" runat="server" placeholder="Ex: 07435270"/><br />

            <label class="label">BAIRRO</label>
            <asp:TextBox class="box" ID="boxBairro" runat="server" placeholder="Ex: Caputera"/><br />

            <label class="label">CIDADE</label>
            <asp:TextBox class="box" ID="boxCidade" runat="server" placeholder="Ex: Arujá"/>

            <asp:Button class="btnvalidar" Text="Validar" runat="server" OnClick="ValidarEndereço"/>
            <span><asp:Label ID="erroendereço" Text="" runat="server" class="erro"/></span>
          </div>

         <div class="infoacesso">

            <h2 class="NomeCampo">Dados de Login</h2>

            <label class="label">E-MAIL</label> 
            <asp:TextBox class="box" ID="boxEmail" runat="server" placeholder="Ex: joao@dasilva.com"/><br />

            <label class="label">CONFIRMAR E-MAIL</label>
            <asp:TextBox class="box" ID="boxConfEmail" runat="server" placeholder="Ex: joao@dasilva.com"/><br />

            <label class="label">SENHA</label>
            <asp:TextBox class="box" ID="boxSenha" runat="server" placeholder="Ex: 123456"/><br />

            <label class="label">CONFIRMAR SENHA</label>
            <asp:TextBox class="box" ID="boxConfSenha" runat="server" placeholder="Ex: 123456"/>

            <asp:Button class="btnvalidar" Text="Cadastrar" runat="server" OnClick="Cadastrar" />
            <span><asp:Label ID="erroacesso" Text="" runat="server" class="erro"/></span>

          </div>

        </article>

    </form>
</body>
</html>
