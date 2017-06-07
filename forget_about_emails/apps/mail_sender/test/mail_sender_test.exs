defmodule MailSenderTest do
  use ExUnit.Case
  use Bamboo.Test
  doctest MailSender.MailFormatter

  test "send email success" do
    mail_def = %MailDef{:to => "b.pietrzyk@outlook.com", :from => "blazej.pietrzyk@gmail.com", :subject => "email subject", :text => "email text", :html => "email html"}
    assert_delivered_email MailSender.BambooMailer.send_now(mail_def)
  end
end
