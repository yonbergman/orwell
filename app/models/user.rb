class User < Sequel::Model
	one_to_one :song
	def to_s
		"<User #{id}: #{full_name} [#{key}]>"
	end	
end	