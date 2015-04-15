class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :user_id
      t.string :opponent_id
      t.string :diff
      t.string :result

      t.timestamps null: false
    end
  end
end
