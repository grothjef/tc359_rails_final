class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.text :name
      t.integer :movespeed
      t.decimal :turnrate
      t.text :sightrange
      t.boolean :strength
      t.boolean :agility
      t.boolean :intelligence

      t.timestamps null: false
    end
  end
end
