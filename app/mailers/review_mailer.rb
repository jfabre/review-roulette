class ReviewMailer < ActionMailer::Base
  default from: "system@review-roulette.org"


  def review(review, user)
    @user = user
    @host = "host.com" 
    @review = review

    #mail(:to => "#{user.name} <#{user.email}>", :subject => "You won a review!")
    mail(:to => "#{user.name} <jimboxx7@hotmail.com>", :subject => "You won a review!")
  end
end
