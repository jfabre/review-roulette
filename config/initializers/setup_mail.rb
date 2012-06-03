if defined?(DevelopmentMailInterceptor)
  if Rails.env.development?
    ActionMailer::Base.smtp_settings = {
      :address => "relais.videotron.ca",
      :port => 25,
      :openssl_verify_mode => 'none'
    }
    ActionMailer::Base.default_url_options[:host] = "localhost:3000"
  elsif Rails.env.production?
    ActionMailer::Base.smtp_settings = {
      :address        => 'smtp.sendgrid.net',
      :port           => '587',
      :authentication => :plain,
      :user_name      => ENV['SENDGRID_USERNAME'],
      :password       => ENV['SENDGRID_PASSWORD'],
      :domain         => 'heroku.com'
    }
    ActionMailer::Base.default_url_options[:host] = "review-roulette.herokuapp.com"
    ActionMailer::Base.delivery_method = :smtp
  end
  ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) 
end