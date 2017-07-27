use Mix.Config

config :my_app, MailSender,
  adapter: Bamboo.SMTPAdapter,
  server: "smtp.gmail.com",
  port: 465,
  username: "blazej.pietrzyk@gmail.com", # or {:system, "SMTP_USERNAME"}
  password: "fake_password", # or {:system, "SMTP_PASSWORD"}
  tls: :if_available, # can be `:always` or `:never`
  allowed_tls_versions: [:"tlsv1", :"tlsv1.1", :"tlsv1.2"], # or {":system", ALLOWED_TLS_VERSIONS"} w/ comma seprated values (e.g. "tlsv1.1,tlsv1.2")
  ssl: true, # can be `true`
  retries: 1
