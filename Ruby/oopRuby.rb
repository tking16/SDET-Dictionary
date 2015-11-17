#person class

class Person
	attr_accessor :height, :hair_color, :top_color
	
	#initialize instance variables
	def initialize(hair,height = 4.5,top = "yellow")
		@hair_color = hair
		@height = height
		@top_color = top
	end

	def dance
		return "Dancing"
	end
	
	def sleep
		return "Sleeping"
	end
end

class Baby < Person
	attr_accessor :smells
	
	def initialize(hair="None", height = 4.5, top = "White")
		@smells = true
		super
	end
	
	def cry
		"Waaaaaaaaah"
	end
	
	def dance
		"I'm a baby, I can't dance!"
	end
	
	def to_s
		if smells
			'I smell'
		else
			'Im clean'
		end
	end
	
	class OldPerson
		def to_s
			"I'm old and i always smells"
		end
	end
	
end