defmodule MailDef do
    defstruct from: "from@domain", to: "to@domain",
              subject: "Subject", text: "Email text",
              html: "Text in html"
end