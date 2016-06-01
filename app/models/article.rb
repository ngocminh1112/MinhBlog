class Article < ActiveRecord::Base
	def self.search(search)
	  where("title LIKE ?", "%#{search}%") 
	end
end
