class ReviewMailer < ActionMailer::Base
  default from: "system@review-roulette.org"

  def review(review, user)
    @user = user
    @review = review

    mail(:to => "#{user.name} <#{user.email}>", :subject => "You won a review!")
  end
end
