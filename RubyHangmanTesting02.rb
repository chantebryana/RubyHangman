#Successful discoveries
#graveyardArray = []
#correctArray = []
word = "squish"
letter = word.downcase.scan(/./) # => ["q", "u", "a", "s", "h"]
#underscore = letter.map { |x| x = "_" } # => ["_", "_", "_", "_", "_"]
#number = word.length # => 5
#number.times { print "_ " } # => "_ _ _ _ _ "
#spaces = underscore.join(" ") # => "_ _ _ _ _"
# alternative: ["_", "_", "_"] * " " => "_ _ _"
#print spaces # => "_ _ _ _ _"

#guess = "s" 
#gets => concatinated at end of array 'guess'
guess = ["s", "e", "f", "q"]
print "WORD: "

letter.each do |i|
  have_we_found_this_letter_in_the_guessed_list_yet = false
  guess.each do |j|
    if i == j
      #print i.downcase + " "
	  have_we_found_this_letter_in_the_guessed_list_yet = true
	  #break
    #else 
      #print "_ "
    end
  end
  if have_we_found_this_letter_in_the_guessed_list_yet
    #what to do when the hidden-word letter has been guessed before
  else
    #what to do when the hidden-word letter has never been guessed
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
