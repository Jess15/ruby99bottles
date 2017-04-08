class Bottles

	def initialize
		@vrs = ""
	end

	def verse(n)
		@vrs = <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n-1} bottles of beer on the wall.
VERSE
		self.substitution(n, @vrs)
	end

	def verses(x, y)
		@vrs = <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n-1} bottles of beer on the wall.
VERSE
		couple = substitution(x, @vrs)+"\n\n"+substitution(y, @vrs)
		return couple 
	end

	def substitution(n, vrs)
		if n==2
	  	vrs = vrs.sub("bottles of beer on the wall.", "bottle of beer on the wall.")
	  elsif n==1
	  	vrs = vrs.gsub("bottles", "bottle")
	  	vrs = vrs.sub("one", "it")
	  	vrs = vrs.sub("#{n-1} bottle of beer on the wall.", "no more bottles of beer on the wall.")
	  elsif n==0
	  	vrs = vrs.gsub("#{n} bottles of beer on", "No more bottles of beer on")
	  	vrs = vrs.gsub("#{n} bottles of beer.", "no more bottles of beer.")
	  	vrs = vrs.gsub("Take one down and pass it around,", "Go to the store and buy some more,")
	  	vrs = vrs.gsub("#{n-1}", "#{n+99}")
	  end
	  return vrs
	end
end