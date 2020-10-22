Rails.application.configure do
  config.action_mailer.default_url_options = { host: "http://localhost:3000" }
  # Verifies that versions and hashed value of the package contents in the project's package.json
  config.webpacker.check_yarn_integrity = 