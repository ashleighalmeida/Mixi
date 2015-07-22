class Recipe < ActiveRecord::Base
   validates :description, :nickname, :title, :ingredients, :instructions, presence: true

   has_and_belongs_to_many :categories
end
