class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.string :name
      t.text :location
      t.integer :villain_id

      t.timestamps
    end
  end
end
