<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="WebH2O.cadastro" %>

<!DOCTYPE html>

<html id="htmlcadastro" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>H2O Cadastro</title>
    <link href="/assets/css/style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

    <article class="cadastro">
      <div class="usuario">

        <h2 class="NomeCampo">Informações Pessoais</h2>
        <asp:Label class="label" Text="ID LEITOR" runat="server" />
        <asp:TextBox class="box" ID="boxID" runat="server" placeholder="Ex: 178035"/><br />

        <asp:Label class="label" Text="NOME" runat="server" />
        <asp:TextBox class="box" ID="boxNome" runat="server" placeholder="Ex: João da Silva"/><br />

        <asp:Label class="label" Text="CPF" runat="server" />
        <asp:TextBox class="box" ID="boxCpf" runat="server" placeholder="Ex: 14789658954"/><br />

        <asp:Label class="label" Text="RG" runat="server" />
        <asp:TextBox class="box" ID="boxRg" runat="server" placeholder="Ex: 654716241"/>

        <asp:Button class="btnvalidar" Text="Validar" runat="server" OnClick="ValidarNome" />
    
       </div>

      <div class="endereço">

        <h2 class="NomeCampo">Endereço</h2>
        <asp:Label class="label" Text="LOGRADOURO" runat="server" />
        <asp:TextBox class="box" ID="boxLogradouro" runat="server" placeholder="Ex: Avenida Brasil"/><br />

        <asp:Label class="label" Text="NÚMERO" runat="server" />
        <asp:TextBox class="box" ID="boxNumero" runat="server" placeholder="Ex: 1575"/><br />

        <asp:Label class="label" Text="COMPLEMENTO" runat="server" />
        <asp:TextBox class="box" ID="boxComplemento" runat="server" placeholder="Ex: Apartamento 33"/><br />

        <asp:Label class="label" Text="CEP" runat="server" />
        <asp:TextBox class="box" ID="boxCep" runat="server" placeholder="Ex: 07435270"/><br />

        <asp:Label class="label" Text="BAIRRO" runat="server" />
        <asp:TextBox class="box" ID="boxBairro" runat="server" placeholder="Ex: Caputera"/><br />

        <asp:Label class="label" Text="CIDADE" runat="server" />
        <asp:TextBox class="box" ID="boxCidade" runat="server" placeholder="Ex: Arujá"/>

        <asp:Button class="btnvalidar" Text="Validar" runat="server" OnClick="ValidarEndereço"/>
    
      </div>

     <div class="infoacesso">

        <h2 class="NomeCampo">Dados de Login</h2>
        <asp:Label class="label" Text="E-MAIL" runat="server" /> 
        <asp:TextBox class="box" ID="boxEmail" runat="server" placeholder="Ex: joao@dasilva.com"/><br />

        <asp:Label class="label" Text="CONFIRMAR E-MAIL" runat="server" />
        <asp:TextBox class="box" ID="boxConfEmail" runat="server" placeholder="Ex: joao@dasilva.com"/><br />

        <asp:Label class="label" Text="SENHA" runat="server" /><asp:Label ID="infoSenha" Text="" runat="server" />
        <asp:TextBox class="box" ID="TextBox3" runat="server" placeholder="Ex: 123456"/><br />

        <asp:Label class="label" Text="CONFIRMAR SENHA" runat="server" />
        <asp:TextBox class="box" ID="boxConfSenha" runat="server" placeholder="Ex: 123456"/>
         <asp:Button class="btnvalidar" Text="Cadastrar" runat="server" OnClick="Cadastrar" />
      
        </div>

    </article>

    </form>
</body>
</html>
