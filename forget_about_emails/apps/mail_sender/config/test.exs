use Mix.Config

config :my_app, MailSender.BambooMailer,
  adapter: Bamboo.TestAdapter
