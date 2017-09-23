using System;
using System.Collections.Generic;
using System.Data;
using System.Text;


namespace CamadaAcessoBanco
{
    public class clsEnviarEmail 
    {
        private string corpoEMail { get; set; }
        private string assuntoEmail { get; set; }
        private string emailDestino { get; set; }

        public string enviarEmail(string corpoEmail, string assuntoEmail, string emailDestino)
        {
            string msgErro = string.Empty;

            //validando e-mail
            string email = emailDestino.Trim();
            int arroba, arroba2, ponto;

            arroba = email.IndexOf('@');
            arroba2 = email.LastIndexOf('@');
            ponto = email.LastIndexOf('.');

            if (arroba <= 0 || ponto <= (arroba + 1) || ponto == (email.Length - 1) || arroba2 != arroba)
            {
                // E-mail inválido!
                msgErro = "E-mail Inválido";
                return msgErro;
            }

            // a partir daqui e-mail está válido

            //enviando e-mail
            // Especifica o servidor SMTP e a porta
            using (System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587))
            {
                try
                {
                    // EnableSsl ativa a comunicação segura com o servidor
                    client.EnableSsl = true;

                    // Especifica a credencial utilizada para envio da mensagem
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential("h2o.bandtec@gmail.com", "vivianzika");

                    // Especifia o remetente e o destinatário da mensagem
                    System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(
                        new System.Net.Mail.MailAddress("h2o.bandtec@gmail.com", "Grupo H2O", Encoding.UTF8),
                        new System.Net.Mail.MailAddress(emailDestino));

                    // Preenche o corpo e o assunto da mensagem
                    message.BodyEncoding = Encoding.UTF8;
                    message.Body =corpoEmail;
                    message.SubjectEncoding = Encoding.UTF8;
                    message.Subject = assuntoEmail;

                    // Anexos devem ser adicionados através do método
                    // message.Attachments.Add()

                    // Envia a mensagem
                    client.Send(message);
                }
                catch (Exception ex)
                {
                    // Exceções devem ser tratadas aqui!
                }

            }
            return "";
        }


    }
}
