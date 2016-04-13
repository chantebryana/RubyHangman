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

#P2: make a guess: (P2 inputs single layer, presses ENTER)
#guess = gets.upcase
#guessArray = []
#guessArray << guess ; => ["s", "e", "f", "q"], etc
guessArray = ["s", "e", "f", "q"]
print "WORD: "

letter.map do |letterz|
  have_we_found_this_letter_in_the_guessed_list_yet = false
  guessArray.map do |guessz|
    if letterz == guessz
      #print i.downcase + " "
	  have_we_found_this_letter_in_the_guessed_list_yet = true
	  break
    #else 
      #print "_ "
    end
  end
  if have_we_found_this_letter_in_the_guessed_list_yet
    print letterz + " "
  else
    print "_ "
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
