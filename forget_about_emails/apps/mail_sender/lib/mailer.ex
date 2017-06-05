defmodule MailSender.Mailer do
  use Bamboo.Mailer, otp_app: :mail_sender
  import Bamboo.Email
  
  @doc """
  
  """
  def send_now(%MailDef{}=mail) do
    format_email(mail) |> deliver_now
  end

  defp format_email(%MailDef{}=mail) do
    new_email(
      from: mail.from,
      to: mail.to,
      subject: mail.subject,
      text_body: mail.text,
      html_body: mail.html
    )
  end
end