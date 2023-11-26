class CreateTea < ActiveRecord::Migration[7.0]
  def change
    create_table :teas do |t|
      t.string :title
      t.integer :class
      t.string :description
      t.integer :temperature
      t.integer :brew_time

      t.timestamps
    end
  end
end