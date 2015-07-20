class Recipe < ActiveRecord::Base
   validates :description, :nickname, :title, :ingredients, :instructions, presence: true
end
