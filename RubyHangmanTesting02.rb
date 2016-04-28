#P1 enters the hangman word:
print "P1, enter a word: " #(P1 inputs whole word, presses ENTER)
#word = "squish"
#letter = word.downcase.scan(/./) 
word = gets.chomp.downcase 
letter = word.scan(/./) # => ["q", "u", "a", "s", "h"]
letterTally = letter.length #a potential marker for winning condition?
guessArray = []
#graveyardTally = 6

=begin
#create enough new lines to separate P1's word from P2's guesses:
x = 0
while x <= 60
  puts "###"
  x += 1
end
=end

#initiate P2's guessing loop:
loop do
	print "P2, guess a letter: " #(P2 inputs single layer, presses ENTER)
	guess = gets.chomp.downcase
	guessArray << guess #=> ex: ["s", "e", "f", "q"]
	#loop: while true; add break condition later on
	#guessArray = ["u", "e", "f", "q"]
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
	graveyardTally = 6
	guessArray.map do |guessx|
	  thisLetterDoesntMatchTheWord = true
	  letter.map do |letterx|
		  if letterx == guessx 
			thisLetterDoesntMatchTheWord = false
			break
		  end
		end
		  if thisLetterDoesntMatchTheWord
			print guessx + " "
			graveyardTally -= 1
		  end
		end
	print "| " + graveyardTally.to_s + " wrong guesses remain \n"
	if 
	  guessArray == letter 
	end 
	if
	  graveyardTally == 0
	    print "P2 loses! The correct word was " + word.upcase 
		break
	end 
end 