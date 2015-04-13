class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :game_id
      t.integer :number
      t.string :value
      t.string :user_id

      t.timestamps null: false
    end
  end
end
