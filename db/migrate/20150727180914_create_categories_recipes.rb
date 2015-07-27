class CreateCategoriesRecipes < ActiveRecord::Migration
  def change
    create_table :categories_recipes do |t|

      t.timestamps null: false
    end
  end
end
