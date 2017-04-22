using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebH2O
{
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValidarNome(object sender, EventArgs e)
        {
            if (boxID.Text.Length < 6)
            {
                errousuario.Text = "ID INVÁLIDO !";
                panelErroUsuario.Visible = true;
                return;
            }

            else if (boxNome.Text.Length == 0)
            {
                errousuario.Text = "NOME INVÁLIDO !";
                panelErroUsuario.Visible = true;
                return;
            }

            else if (boxCpf.Text.Length != 11)
            {
                errousuario.Text = "CPF INVÁLIDO !";
                panelErroUsuario.Visible = true;
                return;
            }

            else if (boxRg.Text.Length != 9)
            {
                errousuario.Text = "RG INVÁLIDO !";
                panelErroUsuario.Visible = true;
                return;
            }

            else
            {
                
                coluna1.Attributes["class"] = "col-sm-4 painel-des";
                coluna2.Attributes["class"] = "col-sm-4";
                errousuario.Text = "";
                panelErroUsuario.Visible = false;
                boxLogradouro.Enabled = true;

            }
        }

        protected void ValidarEndereço(object sender, EventArgs e)
        {
            if (boxLogradouro.Text.Length == 0)
            {
                erroendereco.Text = "Logradouro Inválido";
                panelErroEndereco.Visible = true;
                return;
            }

            else if (boxCep.Text.Length != 8)
            {
                erroendereco.Text = "Cep Inválido";
                panelErroEndereco.Visible = true;
                return;
            }

            else if (boxBairro.Text.Length == 0)
            {
                erroendereco.Text = "Bairro Inválido";
                panelErroEndereco.Visible = true;
                return;
            }

            else if (boxCidade.Text.Length == 0)
            {
                erroendereco.Text = "Cidade Inválida";
                panelErroEndereco.Visible = true;
                return;
            }

            else
            {
                erroendereco.Text = "";
            }
        }

        protected void Cadastrar(object sender, EventArgs e)
        {
            string email = boxEmail.Text.Trim();
            int arroba, arroba2, ponto;

            arroba = email.IndexOf('@');
            arroba2 = email.LastIndexOf('@');
            ponto = email.LastIndexOf('.');

            if (arroba <= 0 || ponto <= (arroba + 1) || ponto == (email.Length - 1) || arroba2 != arroba)
            {
                // E-mail inválido!

                erroinfo.Text = "E-mail Inválido";
                panelErroInfo.Visible = true;
                return;
            }

            else if (boxConfEmail.Text != boxEmail.Text)
            {
                erroinfo.Text = "Confirmação de E-mail Inválido";
                panelErroInfo.Visible = true;
                return;
            }

            else if (boxSenha.Text.Length < 6)
            {
                erroinfo.Text = "Senha Inválida";
                panelErroInfo.Visible = true;
                return;
            }

            else if (boxConfSenha.Text != boxSenha.Text)
            {
                erroinfo.Text = "Confirmação de Senha Inválida";
                panelErroInfo.Visible = true;
                return;
            }

            else
            {
                erroinfo.Text = "";
            }


        }
    }
}
