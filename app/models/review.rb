class Review < ActiveRecord::Base
  belongs_to :player
  validate :comment, :presence => true
  validates_length_of :comment, :minimum => 1, :allow_blank => false, :message => "Don't forget the comment (url of the review?)"

  def player
    super || Player.new(:name => player_name)
  end
end
