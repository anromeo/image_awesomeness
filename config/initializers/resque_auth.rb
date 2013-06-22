Resque::Server.use(Rack::Auth::Basic) do |user, password|
  password == Rails.env.production? ? ENV['RESQUE_PASSWORD'] : "password"
end