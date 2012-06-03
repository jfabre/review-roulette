ActionMailer::Base.smtp_settings = {
  :address => "relais.videotron.ca",
  :port => 25,
  :openssl_verify_mode => 'none'
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?