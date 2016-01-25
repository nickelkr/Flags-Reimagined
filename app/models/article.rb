class Article < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	has_many :comments, dependent: :destroy
  	validates :title, presence: true, length: { minimum: 5 }

end