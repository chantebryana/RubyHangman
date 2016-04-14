#Successful discoveries
#graveyardArray = []
#correctArray = []
word = "squish"
letter = word.downcase.scan(/./) # => ["q", "u", "a", "s", "h"]
guessArray = []
#underscore = letter.map { |x| x = "_" } # => ["_", "_", "_", "_", "_"]
#number = word.length # => 5
#number.times { print "_ " } # => "_ _ _ _ _ "
#spaces = underscore.join(" ") # => "_ _ _ _ _"
# alternative: ["_", "_", "_"] * " " => "_ _ _"
#print spaces # => "_ _ _ _ _"

#print "P2, guess a letter: " #(P2 inputs single layer, presses ENTER)
#guess = gets.chomp.downcase
#guessArray << guess #=> ex: ["s", "e", "f", "q"]
guessArray = ["u", "e", "f", "q"]
print "WORD: "

letter.map do |letterz|
  have_we_found_this_letter_in_the_guessed_list_yet = false
  guessArray.map do |guessz|
    if letterz == guessz
	  have_we_found_this_letter_in_the_guessed_list_yet = true
	  break
    end
  end
  if have_we_found_this_letter_in_the_guessed_list_yet
    print letterz + " "
  else
    print "_ "
  end
end 


print "GRAVEYARD: "

guessArray.map do |guessx|
  thisLetterDoesntMatchTheWord = true
  letter.map do |letterx|
	  if letterx == guessx #this order matters, apparently; also the equals operand is crutial!!
		thisLetterDoesntMatchTheWord = false
		break
	  end
	end
	  if thisLetterDoesntMatchTheWord
		print guessx + " "
	  else
		print "_ "
	  end
	end

