class Song < Sequel::Model
	many_to_one :user
	def to_s
		"<Song #{id}: #{artist}-#{name}>"
	end	
end	