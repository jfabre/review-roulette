class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment, :null => false, :default => ''
      t.integer :player_id, :null => false
      t.boolean :completed, :null => false, :default => false

      t.timestamps
    end
  end
end
