class City < ActiveRecord::Base
	has_many :articles
	validates :city, presence: true,
	length: { minimum: 1 }
end
