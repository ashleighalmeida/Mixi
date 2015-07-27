class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :recipe_id
      t.integer :category_id
      t.string :name

      t.timestamps null: false
    end
  end
end
