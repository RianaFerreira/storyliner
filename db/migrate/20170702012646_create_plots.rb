class CreatePlots < ActiveRecord::Migration[5.1]
  def change
    create_table :plots do |t|
      t.string :title
      t.string :location
      t.string :starship
      t.string :vehicle
      t.string :hero
      t.string :sidekick
      t.string :victim
      t.string :villain
      t.integer :category, default: 0
      t.string :story
      t.timestamps
    end
  end
end
