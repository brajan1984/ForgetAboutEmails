defmodule MailSender.Mailer do
  use Bamboo.Mailer, otp_app: :mail_sender
  
  
  @doc """
  
  """
  def send_now(%MailDef{}=mail) do
    MailSender.MailFormatter.format_email(mail) |> deliver_now
  end
end