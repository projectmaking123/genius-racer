class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
     t.references :player_one, null: false
     t.references :player_two, null: false
     t.string :name, null: false
     t.string :winner, null: false

     t.timestamps null: false
   end
  end
end
