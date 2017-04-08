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
               
                return;               
            }

            else if (boxNome.Text.Length == 0)
            {
                errousuario.Text = "NOME INVÁLIDO !";
                return;
            }

            else if (boxCpf.Text.Length  != 11)
            {
                errousuario.Text = "CPF INVÁLIDO !";
                return;
            }

            else if (boxRg.Text.Length != 9)
            {
                errousuario.Text = "RG INVÁLIDO !";
                return;
            }

            else
            {
                errousuario.Text = "VÁLIDO";              
            }


        }

       

        protected void ValidarEndereço(object sender, EventArgs e)
        {
            if (boxLogradouro.Text.Length == 0)
            {
                erroendereço.Text = "LOGRADOURO INVÁLIDO !";
                return;
            }

            else if (boxCep.Text.Length != 8)
            {
                erroendereço.Text = "CEP INVÁLIDO !";
                return;
            }

            else if (boxBairro.Text.Length == 0)
            {
                erroendereço.Text = "BAIRRO INVÁLIDO !";
                return;
            }

            else if (boxCidade.Text.Length == 0)
            {
                erroendereço.Text = "CIDADE INVÁLIDA !";
                return;
            }

            else
            {
                errousuario.Text = "";
                erroendereço.Text = "VÁLIDO";
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

                erroacesso.Text = "E-MAIL INVÁLIDO !";
                return;
            }

            else if(boxConfEmail.Text != boxEmail.Text)
            {
                erroacesso.Text = "CONFIRMAR E-MAIL !";
            }

            else if (boxSenha.Text.Length < 6)
            {
                erroacesso.Text = "SENHA INVÁLIDA !";
                return;
            }

            else if (boxConfSenha.Text != boxSenha.Text)
            {
                erroacesso.Text = "CONFIRMAR SENHA !";
                return;
            }

            else
            {
                erroendereço.Text = "";
                erroacesso.Text = "OK !!";
            }
        }
    }
}