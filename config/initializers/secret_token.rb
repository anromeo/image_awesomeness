# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
LoveForAdventure::Application.config.secret_token = Rails.env.production? ? ENV['SECRET_TOKEN'] : "5d2abceb2a2e0a112b0875d070ffb6c82d65ea76b8c6a63b7e3e7ab1fb737d55f2ee44b718b55fda821cfa4cec6834527bc0799b4815c7720c79b23d96e2c82a"
