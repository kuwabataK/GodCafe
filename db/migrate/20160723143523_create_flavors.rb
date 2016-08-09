class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.integer :sourness
      t.integer :body
      t.integer :bitterness

      t.timestamps null: false
    end
  end
end
