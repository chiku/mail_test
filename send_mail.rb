#!/usr/bin/env ruby

require 'net/smtp'

message = <<-MESSAGE_END
From: Private Person <me@fromdomain.com>
To: A Test User <test@todomain.com>
Subject: SMTP e-mail test

<h1>This is a test e-mail message.<h1>
MESSAGE_END

Net::SMTP.start('localhost', 5001) do |smtp|
  smtp.send_message message, 'me@fromdomain.com', 'test@todomain.com'
end
