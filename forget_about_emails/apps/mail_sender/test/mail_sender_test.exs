defmodule MailSenderTest do
  use ExUnit.Case
  doctest MailSender.MailFormatter

  test "send email" do
    mail_def = %MailDef{:to => "b.pietrzyk@outlook.com", :from => "blazej.pietrzyk@gmail.com", :subject => "email subject", :text => "email text", :html => "email html"}
    MailSender.Mailer.send_now(mail_def)
  end
end
