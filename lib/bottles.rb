class Bottles
	def verse(n)
		vrs = <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n-1} bottles of beer on the wall.
VERSE
		self.substitution(n, vrs)
	end

	def substitution(n, vrs)
		if n==2
	  	vrs = vrs.sub("bottles of beer on the wall.", "bottle of beer on the wall.")
	  end
	  return vrs
	end
end