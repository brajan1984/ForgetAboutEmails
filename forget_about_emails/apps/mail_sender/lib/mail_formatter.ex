defmodule MailSender.MailFormatter do
    import Bamboo.Email

    @doc ~S"""
    Maps MailDef to Bamboo email struct

    ## Examples
        iex> mail_def = %MailDef{:to => "recipient@domain", :from => "sender@domain", :subject => "email subject", :text => "email text", :html => "email html"}
        iex> MailSender.MailFormatter.format_email(mail_def)
        %Bamboo.Email{to: "recipient@domain", from: "sender@domain", subject: "email subject", text_body: "email text", html_body: "email html", assigns: %{}, bcc: nil, cc: nil, headers: %{}, private: %{}}
    """    
    def format_email(%MailDef{}=mail) do
        new_email()
        |> from(mail.from)
        |> to(mail.to)
        |> subject(mail.subject)
        |> text_body(mail.text)
        |> html_body(mail.html)
    end
end