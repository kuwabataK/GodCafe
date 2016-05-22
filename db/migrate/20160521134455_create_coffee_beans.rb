class CreateCoffeeBeans < ActiveRecord::Migration
  def change
    create_table :coffee_beans do |t|
      t.string :name
      t.float :sourness
      t.float :body
      t.float :bitterness



      t.timestamps null: false
    end
  end
end
