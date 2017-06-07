defmodule MailSender.BambooMailer do
  use Bamboo.Mailer, otp_app: :my_app
  
  
  @doc """
  
  """
  def send_now(%MailDef{}=mail) do
    MailSender.MailFormatter.format_email(mail) |> deliver_now
  end
end