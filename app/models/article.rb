class Article < ActiveRecord::Base
	belongs_to :city
	has_many :comments, dependent: :destroy
  	validates :title, presence: true, length: { minimum: 1 }

end