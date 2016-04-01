#Successful discoveries
word = "Quash"
letter = word.downcase.scan(/./) # => ["q", "u", "a", "s", "h"]
underscore = letter.map { |x| x = "_" } # => ["_", "_", "_", "_", "_"]
number = word.length # => 5
number.times { print "_ " } # => "_ _ _ _ _ "
underscore.join(" ") # => "_ _ _ _ _"
spaces = underscore.join(" ") # => "_ _ _ _ _"
print spaces # => "_ _ _ _ _"


guess = "l"
letter.each do |i|
  if guess == i 
    print "success "
  else 
    print "failure "
  end
end

=begin
irb(main):035:0> guess = "l"
=> "l"
irb(main):036:0> letter.each do |i|
irb(main):037:1*   if guess == i
irb(main):038:2>     print "success "
irb(main):039:2>   else
irb(main):040:2*     print "failure "
irb(main):041:2>   end
irb(main):042:1> end
failure failure failure failure failure => ["q", "u", "a", "s", "h"]
irb(main):043:0> guess = "s"
=> "s"
irb(main):044:0> letter.each do |i|
irb(main):045:1*   if guess == i
irb(main):046:2>     print "success "
irb(main):047:2>   else
irb(main):048:2*     print "failure "
irb(main):049:2>   end
irb(main):050:1> end
failure failure failure success failure => ["q", "u", "a", "s", "h"]
irb(main):051:0>
=end
