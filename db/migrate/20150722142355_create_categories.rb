class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, :primary_key => :id  do |t|
   t.string :name
      t.timestamps null: false
    end

  end

  change_column :categories, :id, :string


end
