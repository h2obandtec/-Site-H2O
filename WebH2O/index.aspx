<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebH2O.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>H2O Web</title>
    <link href="/assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <div class="login">
              <label>Login</label>
              <asp:TextBox runat="server" placeholder="Digite seu email" />
              <label>Senha</label>
              <asp:TextBox runat="server" placeholder="Digite sua senha" />
              <asp:Button Text="Login" runat="server" />
              <div class="cadastre">
                  <a href="/cadastro.aspx">Cadastre-se</a>
              </div>
          </div>
           
    </form>
</body>
</html>