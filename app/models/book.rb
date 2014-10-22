class Book < ActiveRecord::Base
	validates :title, length: { in: 1..30 }
	validates :genre, length: { in: 1..10}
	validates :genre, 
end

