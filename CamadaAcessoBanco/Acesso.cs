using System;
using System.Data.SqlClient;
using CamadaAcessoBanco;

namespace CamadaAcessoBanco
{
    public class BancoDeDados
    {
        public string Nome { get; set; }
        public string Email { get; set; }
        public string CPF { get; set; }
        public string RG { get; set; }
        public string Senha { get; set; }

        public string ID { get; set; }
        public string Cidade { get; set; }
        public string Bairro { get; set; }

        public string Logradouro { get; set; }
        public string Numero { get; set; }
        public string CEP { get; set; }
        public string Complemento { get; set; }

        Email _enviarEmail;

        public void Cadastrar()
        {
            // erroinfo.Text = "";

            using (SqlConnection conn = new SqlConnection("Server=tcp:grupoh2o.database.windows.net,1433;Initial Catalog=site;Persist Security Info=False;User ID=grupoh2o;Password=web1234&;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                
                conn.Open();
                int cod_usuario, cod_dispositivo, cod_cidade, cod_bairro;

                // Cria um comando para inserir um novo registro à tabela
                using (SqlCommand cmd = new SqlCommand("INSERT INTO USUARIO (NOME, EMAIL, CPF, RG, SENHA) OUTPUT INSERTED.COD_USUARIO VALUES (@nome, @email, @cpf, @rg, @senha)", conn))
                {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@nome", Nome);
                    cmd.Parameters.AddWithValue("@email", Email);
                    cmd.Parameters.AddWithValue("@cpf", CPF);
                    cmd.Parameters.AddWithValue("@rg", RG);
                    cmd.Parameters.AddWithValue("@senha", Senha);


                    cod_usuario = (int)cmd.ExecuteScalar();
                }

                using (SqlCommand cmd = new SqlCommand("INSERT INTO DISPOSITIVO (ID, COD_USUARIO) OUTPUT INSERTED.COD_DISPOSITIVO VALUES (@id, @cod_usuario)", conn))
                {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@id", ID);
                    cmd.Parameters.AddWithValue("@cod_usuario", cod_usuario);

                    cod_dispositivo = (int)cmd.ExecuteScalar();
                }

                using (SqlCommand cmd = new SqlCommand("INSERT INTO CIDADE (NOME) OUTPUT INSERTED.COD_CIDADE VALUES (@nome)", conn))
                {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@nome", Cidade);

                    cod_cidade = (int)cmd.ExecuteScalar();
                }

                using (SqlCommand cmd = new SqlCommand("INSERT INTO BAIRRO (NOME, COD_CIDADE) OUTPUT INSERTED.COD_BAIRRO VALUES (@nome, @cod_cidade)", conn))
                {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@nome", Bairro);
                    cmd.Parameters.AddWithValue("@cod_cidade", cod_cidade);

                    cod_bairro = (int)cmd.ExecuteScalar();
                }

                using (SqlCommand cmd = new SqlCommand("INSERT INTO ENDERECO (LOGRADOURO, NUMERO, CEP, COMPLEMENTO, COD_BAIRRO, COD_USUARIO) VALUES (@logradouro, @numero, @cep, @complemento, @cod_bairro, @cod_usuario)", conn))
                {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@logradouro", Logradouro);
                    cmd.Parameters.AddWithValue("@numero", Numero);
                    cmd.Parameters.AddWithValue("@cep", CEP);
                    cmd.Parameters.AddWithValue("@complemento", Complemento);
                    cmd.Parameters.AddWithValue("@cod_bairro", cod_bairro);
                    cmd.Parameters.AddWithValue("@cod_usuario", cod_usuario);

                    cmd.ExecuteNonQuery();
                }
            }

            _enviarEmail = new Email();
            _enviarEmail.enviarEmail("Cadastro realizado com sucesso !", "Cadastro H2O.", Email);

        }

        public string Alterar()
        {
            return "";
        }

        public string Excluir()
        {
            return "";
        }

    }
}