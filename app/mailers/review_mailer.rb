class ReviewMailer < ActionMailer::Base
  default from: "no-reply@review-roulette.com"

  def review(review, user)
    @user = user
    @review = review

    mail(:to => "#{user.name} <#{user.email}>", :subject => "You won a review!")
  end
end
