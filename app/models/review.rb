class Review < ActiveRecord::Base
  belongs_to :player
  validate :comment, :presence => true
  validates_length_of :comment, :minimum => 1, :allow_blank => false, :message => "Don't forget the comment (url of the review?)"
  before_save :fill_player_name

  def fill_player_name
    self.player_name = player.name
  end
  def player
    super || Player.new(:name => player_name)
  end
end
