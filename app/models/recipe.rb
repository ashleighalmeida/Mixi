class Recipe < ActiveRecord::Base
   validates :description, :nickname, :title, :ingredients, :instructions, :category_ids, presence: true

 has_many :categories
end
