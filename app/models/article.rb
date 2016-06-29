class Article < ActiveRecord::Base
	validates :title, presence: true, length: { in: 6..20 }
	validates :body,presence: true, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
	def self.search(search)
	  where("title ILIKE ?", "%#{search}%") 
	end
end
