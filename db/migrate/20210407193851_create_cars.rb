class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :color
      t.integer :year

      t.timestamps
    end
  end
end
