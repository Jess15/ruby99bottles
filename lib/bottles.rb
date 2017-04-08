class Bottles

	def initialize
		@vrs = ""
		@sing = ""
	end

	def verse(n)
		self.substitution(n)
	end

	def verses(x, y)
		if x == 2 and y == 0
			couple = substitution(x)+"\n"+substitution(x-1)+"\n"+substitution(x-2)
		else	
			couple = substitution(x)+"\n"+substitution(y)
		end
		return couple 
	end

	def song
		99.downto(0) { |i|
			@sing = @sing+substitution(i)
			if i != 0
				@sing = @sing+"\n"
			end
		}
		return @sing
	end

	def substitution(n)
		@vrs = <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n-1} bottles of beer on the wall.
VERSE
		
		case n
		when 2
			@vrs = @vrs.sub("bottles of beer on the wall.", "bottle of beer on the wall.")
		when 1
	  	@vrs = @vrs.gsub("bottles", "bottle")
	  	@vrs = @vrs.sub("one", "it")
	  	@vrs = @vrs.sub("#{n-1} bottle of beer on the wall.", "no more bottles of beer on the wall.")
		when 0
	  	@vrs = @vrs.gsub("#{n} bottles of beer on", "No more bottles of beer on")
	  	@vrs = @vrs.gsub("#{n} bottles of beer.", "no more bottles of beer.")
	  	@vrs = @vrs.gsub("Take one down and pass it around,", "Go to the store and buy some more,")
	  	@vrs = @vrs.gsub("#{n-1}", "#{n+99}")			
		end
	  return @vrs
	end
end