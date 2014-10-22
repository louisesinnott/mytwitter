class Book < ActiveRecord::Base
	before_create :downcase_genre
	validates :title, presence: true, length: { in: 1..30 }, uniqueness: { case_sensitive: false}

	validates :genre, length: {in: 1..10}
	
	private
	def downcase_genre
		self.genre.downcase!
	end
end


