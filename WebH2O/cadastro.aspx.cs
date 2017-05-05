using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

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
                boxNumero.Enabled = true;
                boxCidade.Enabled = true;
                boxBairro.Enabled = true;
                boxCep.Enabled = true;
                boxComplemento.Enabled = true;
                Button1.Enabled = true;

                boxNome.Enabled = false;
                boxID.Enabled = false;
                boxCpf.Enabled = false;
                boxRg.Enabled = false;
                btnPasso1.Enabled = false;

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

            else if (boxNumero.Text.Length == 0)
            {
                erroendereco.Text = "Número Inválido";
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
                coluna2.Attributes["class"] = "col-sm-4 painel-des";
                coluna3.Attributes["class"] = "col-sm-4";
                errousuario.Text = "";

                boxLogradouro.Enabled = false;
                boxNumero.Enabled = false;
                boxCidade.Enabled = false;
                boxBairro.Enabled = false;
                boxCep.Enabled = false;
                boxComplemento.Enabled = false;
                Button1.Enabled = false;

                boxEmail.Enabled = true;
                boxConfEmail.Enabled = true;
                boxSenha.Enabled = true;
                boxConfSenha.Enabled = true;
                Button2.Enabled = true;
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

                using (SqlConnection conn = new SqlConnection("Server=tcp:grupoh2o.database.windows.net,1433;Initial Catalog=site;Persist Security Info=False;User ID=guilherme;Password=castanheiras67@;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
                {
                    conn.Open();
                    int cod_usuario, cod_dispositivo, cod_cidade, cod_bairro;

                    // Cria um comando para inserir um novo registro à tabela
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO USUARIO (NOME, EMAIL, CPF, RG, SENHA) OUTPUT INSERTED.COD_USUARIO VALUES (@nome, @email, @cpf, @rg, @senha)", conn))
                    {
                        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                        cmd.Parameters.AddWithValue("@nome", boxNome.Text);
                        cmd.Parameters.AddWithValue("@email", boxConfEmail.Text);
                        cmd.Parameters.AddWithValue("@cpf", boxCpf.Text);
                        cmd.Parameters.AddWithValue("@rg", boxRg.Text);
                        cmd.Parameters.AddWithValue("@senha", boxConfSenha.Text);


                        cod_usuario = (int)cmd.ExecuteScalar();
                    }

                    using (SqlCommand cmd = new SqlCommand("INSERT INTO DISPOSITIVO (ID, COD_USUARIO) OUTPUT INSERTED.COD_DISPOSITIVO VALUES (@id, @cod_usuario)", conn))
                    {
                        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                        cmd.Parameters.AddWithValue("@id", boxID.Text);
                        cmd.Parameters.AddWithValue("@cod_usuario", cod_usuario);

                        cod_dispositivo = (int)cmd.ExecuteScalar();
                    }

                    using (SqlCommand cmd = new SqlCommand("INSERT INTO CIDADE (NOME) OUTPUT INSERTED.COD_CIDADE VALUES (@nome)", conn))
                    {
                        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                        cmd.Parameters.AddWithValue("@nome", boxCidade.Text);

                        cod_cidade = (int)cmd.ExecuteScalar();
                    }

                    using (SqlCommand cmd = new SqlCommand("INSERT INTO BAIRRO (NOME, COD_CIDADE) OUTPUT INSERTED.COD_BAIRRO VALUES (@nome, @cod_cidade)", conn))
                    {
                        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                        cmd.Parameters.AddWithValue("@nome", boxBairro.Text);
                        cmd.Parameters.AddWithValue("@cod_cidade", cod_cidade);

                        cod_bairro = (int)cmd.ExecuteScalar();
                    }

                    using (SqlCommand cmd = new SqlCommand("INSERT INTO ENDERECO (LOGRADOURO, NUMERO, CEP, COMPLEMENTO, COD_BAIRRO, COD_USUARIO) VALUES (@logradouro, @numero, @cep, @complemento, @cod_bairro, @cod_usuario)", conn))
                    {
                        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                        cmd.Parameters.AddWithValue("@logradouro", boxLogradouro.Text);
                        cmd.Parameters.AddWithValue("@numero", boxNumero.Text);
                        cmd.Parameters.AddWithValue("@cep", boxCep.Text);
                        cmd.Parameters.AddWithValue("@complemento", boxComplemento.Text);
                        cmd.Parameters.AddWithValue("@cod_bairro", cod_bairro);
                        cmd.Parameters.AddWithValue("@cod_usuario", cod_usuario);

                        cmd.ExecuteNonQuery();
                    }
          
                }

                erroinfo.Text = "OK !!";
                panelErroInfo.Visible = true;
                Response.Redirect("index.aspx");
            }


        }
    }
}
