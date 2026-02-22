Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001' # React dev server

    resource '*',
      headers: :any,
      expose: ['Authorization'],      # allow React to read JWT
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: false
  end
end
