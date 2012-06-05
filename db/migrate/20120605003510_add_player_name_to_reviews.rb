class AddPlayerNameToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :player_name, :string
  end
end