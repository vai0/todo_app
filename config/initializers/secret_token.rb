# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.


if Rails.env.production? && ENV['PUSHER_SECRET_TOKEN'].blank?
  raise 'PUSHER_SECRET_TOKEN environment variable must be set!'
end

TodoApp::Application.config.secret_token = 
  ENV['PUSHER_SECRET_TOKEN'] || '1b38416c73a9cdc579046831489a852875b042f9205b520022e01a9df314b66c32056460691caf8c2c3406e6dda2689f91e15038a0e951d0fe12251552ed72ad'