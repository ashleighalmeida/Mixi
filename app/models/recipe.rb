class Recipe < ActiveRecord::Base
   
   mount_uploader :attachment, AttachmentUploader
   validates :description, :nickname, :title, :ingredients, :instructions, :category_ids, presence: true

 has_many :categories
end
