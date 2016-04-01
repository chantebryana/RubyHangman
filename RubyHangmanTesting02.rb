#Successful discoveries
word = "Quash"
letter = word.downcase.scan(/./) # => ["q", "u", "a", "s", "h"]
#underscore = letter.map { |x| x = "_" } # => ["_", "_", "_", "_", "_"]
#number = word.length # => 5
#number.times { print "_ " } # => "_ _ _ _ _ "
#spaces = underscore.join(" ") # => "_ _ _ _ _"
#print spaces # => "_ _ _ _ _"


guess = "s"
letter.each do |i|
  if guess == i 
    print guess.downcase + " "
  else 
    print "_ "
  end
end;nil # => adding ";nil" after final end will change the return statement from "letter" array to "nil"

#How to load my file into CMD instead of manually typing each time!!
=begin
irb(main):051:0> letter.each do |i|
irb(main):052:1*   if guess == i
irb(main):053:2>     print guess.downcase + " "
irb(main):054:2>   else
irb(main):055:2*     print "_ "
irb(main):056:2>   end
irb(main):057:1> end
_ _ _ s _ => ["q", "u", "a", "s", "h"]
irb(main):058:0>
=end

