using System;
using System.Data.SqlClient;

namespace CamadaAcessoBanco
{
    public class BancoDeDados
    {
        protected void Cadastrar()
        {
            // erroinfo.Text = "";

            using (SqlConnection conn = new SqlConnection("Server=tcp:grupoh2o.database.windows.net,1433;Initial Catalog=site;Persist Security Info=False;User ID=grupoh2o;Password=web1234&;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
            //    conn.Open();
            //    int cod_usuario, cod_dispositivo, cod_cidade, cod_bairro;

            //    // Cria um comando para inserir um novo registro à tabela
            //    using (SqlCommand cmd = new SqlCommand("INSERT INTO USUARIO (NOME, EMAIL, CPF, RG, SENHA) OUTPUT INSERTED.COD_USUARIO VALUES (@nome, @email, @cpf, @rg, @senha)", conn))
            //    {
            //        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
            //        cmd.Parameters.AddWithValue("@nome", boxNome.Text);
            //        cmd.Parameters.AddWithValue("@email", boxConfEmail.Text);
            //        cmd.Parameters.AddWithValue("@cpf", boxCpf.Text);
            //        cmd.Parameters.AddWithValue("@rg", boxRg.Text);
            //        cmd.Parameters.AddWithValue("@senha", PasswordHash.CreateHash(boxSenha.Text));


            //        cod_usuario = (int)cmd.ExecuteScalar();
            //    }

            //    using (SqlCommand cmd = new SqlCommand("INSERT INTO DISPOSITIVO (ID, COD_USUARIO) OUTPUT INSERTED.COD_DISPOSITIVO VALUES (@id, @cod_usuario)", conn))
            //    {
            //        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
            //        cmd.Parameters.AddWithValue("@id", boxID.Text);
            //        cmd.Parameters.AddWithValue("@cod_usuario", cod_usuario);

            //        cod_dispositivo = (int)cmd.ExecuteScalar();
            //    }

            //    using (SqlCommand cmd = new SqlCommand("INSERT INTO CIDADE (NOME) OUTPUT INSERTED.COD_CIDADE VALUES (@nome)", conn))
            //    {
            //        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
            //        cmd.Parameters.AddWithValue("@nome", boxCidade.Text);

            //        cod_cidade = (int)cmd.ExecuteScalar();
            //    }

            //    using (SqlCommand cmd = new SqlCommand("INSERT INTO BAIRRO (NOME, COD_CIDADE) OUTPUT INSERTED.COD_BAIRRO VALUES (@nome, @cod_cidade)", conn))
            //    {
            //        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
            //        cmd.Parameters.AddWithValue("@nome", boxBairro.Text);
            //        cmd.Parameters.AddWithValue("@cod_cidade", cod_cidade);

            //        cod_bairro = (int)cmd.ExecuteScalar();
            //    }

            //    using (SqlCommand cmd = new SqlCommand("INSERT INTO ENDERECO (LOGRADOURO, NUMERO, CEP, COMPLEMENTO, COD_BAIRRO, COD_USUARIO) VALUES (@logradouro, @numero, @cep, @complemento, @cod_bairro, @cod_usuario)", conn))
            //    {
            //        // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
            //        cmd.Parameters.AddWithValue("@logradouro", boxLogradouro.Text);
            //        cmd.Parameters.AddWithValue("@numero", boxNumero.Text);
            //        cmd.Parameters.AddWithValue("@cep", boxCep.Text);
            //        cmd.Parameters.AddWithValue("@complemento", boxComplemento.Text);
            //        cmd.Parameters.AddWithValue("@cod_bairro", cod_bairro);
            //        cmd.Parameters.AddWithValue("@cod_usuario", cod_usuario);

            //        cmd.ExecuteNonQuery();
            //    }
            //}

            //clsEnviarEmail cadastro = new clsEnviarEmail();
            //erroRetorno = cadastro.enviarEmail("Alterações realizadas", "Alterações H2O", "gui_tavares2hotmail.com");

            //if (erroRetorno != "")
            //{

            }


            //Response.Redirect("default.aspx");



        }
    }
}