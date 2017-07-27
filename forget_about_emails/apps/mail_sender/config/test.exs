use Mix.Config

config :my_app, MailSender,
  adapter: Bamboo.TestAdapter
