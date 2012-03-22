class CreateVillains < ActiveRecord::Migration
  def change
    create_table :villains do |t|
      t.string :firstName
      t.string :lastName

      t.timestamps
    end
  end
end
