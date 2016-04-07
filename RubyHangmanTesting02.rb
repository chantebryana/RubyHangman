#Successful discoveries
#graveyardArray = []
#correctArray = []
word = "Squish"
letter = word.downcase.scan(/./) # => ["q", "u", "a", "s", "h"]
#underscore = letter.map { |x| x = "_" } # => ["_", "_", "_", "_", "_"]
#number = word.length # => 5
#number.times { print "_ " } # => "_ _ _ _ _ "
#spaces = underscore.join(" ") # => "_ _ _ _ _"
# alternative: ["_", "_", "_"] * " " => "_ _ _"
#print spaces # => "_ _ _ _ _"

guess = "s" 
#gets => concatinated at end of array 'guess'
guess = ["s", "e", "f", "q"]
print "WORD: "

letter.each do |i|
  guess.each do |j|
    if i == j 
      print j.downcase + " "
	  # add to "correct" array
	  # if "correct" array is full (if there are no underscores remaining), then P2 wins
    else 
      print "_ "
	  # add to "incorrect" array
	  # if graveyard array is full (== 6 elements), then P2 loses
    end
    # add P2 guess to "guessed-array"
  end
end 

=begin
print "GRAVEYARD: "

letter.each do |i|
  if guess != i 
    print guess + ", "
  end
end
=end
