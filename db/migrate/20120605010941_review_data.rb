class ReviewData < ActiveRecord::Migration
  def up
    Review.all.each do |r| 
      r.player_name = r.player.name
      r.save! 
    end
  end

  def down
  end
end
