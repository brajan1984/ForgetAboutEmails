defmodule MailSender do
  use Application
  
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Supervisor]
    Supervisor.start_link(children, opts)
    #mail_def = %MailDef{:to => "recipient@domain", :from => "sender@domain", :subject => "email subject", :text => "email text", :html => "email html"}
    #MailSender.MailFormatter.format_email(mail_def)
  end
end
