#P1 enters the hangman word:
print "P1, enter a single real English word, then press ENTER: " #(P1 inputs whole word, presses ENTER)
word = gets.chomp.downcase 
letter = word.scan(/./) # => ["q", "u", "a", "s", "h"]
letterTally = letter.length #a potential marker for winning condition?
guessArray = []

#create enough new lines to separate P1's word from P2's guesses:
x = 0
while x <= 60
  puts "###"
  x += 1
end

print "P1's word: "
letterTally.times {print "_ "}
print "\n"

#initiate P2's guessing loop:
loop do
	print "P2, guess a letter: " #(P2 inputs single layer, presses ENTER)
	guess = gets.chomp.downcase
	guessArray << guess #=> ex: ["s", "e", "f", "q"]
	print "WORD: "
	guessTally = 0
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
		guessTally += 1
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
#=begin 
	if letterTally == guessTally 
	  print "P2 wins! Good guessing!\n"
	  break
	end 
#=end 
	if
	  graveyardTally == 0
	    print "P2 loses! The correct word was " + word.upcase 
		break
	end 
end 