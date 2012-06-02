class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_winners

  def load_winners
    @winners = Review.order("id DESC").limit(20)
  end
end
