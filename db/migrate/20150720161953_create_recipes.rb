class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
    t.string   :nickname
    t.string   :website
    t.string   :instagram
    t.string   :title
    t.string   :description
    t.string   :ingredients
    t.string   :instructions
    t.string   :notes
    t.string   :embed
    t.string   :photo
    

      t.timestamps null: false
    end
  end
end
