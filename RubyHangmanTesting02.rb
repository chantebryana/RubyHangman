#Successful discoveries
word = "Quash"
letter = word.downcase.scan(/./) # => ["q", "u", "a", "s", "h"]
underscore = letter.map { |x| x = "_" } # => ["_", "_", "_", "_", "_"]
number = word.length # => 5
number.times { print "_ " } # => "_ _ _ _ _ "
underscore.join(" ") # => "_ _ _ _ _"
underscore.each { |x| print x + " " } # => "_ _ _ _ _ "
spaces = underscore.join(" ") # => "_ _ _ _ _"
print spaces # => "_ _ _ _ _"