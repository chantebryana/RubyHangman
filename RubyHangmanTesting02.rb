word = "squish"
letter = word.downcase.scan(/./) # => ["q", "u", "a", "s", "h"]
guessArray = []
#print "P2, guess a letter: " #(P2 inputs single layer, presses ENTER)
#guess = gets.chomp.downcase
#guessArray << guess #=> ex: ["s", "e", "f", "q"]
#loop: while true; add break condition later on
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
#graveyardArray = Array.new(6, "")
graveyardTally = 6
guessArray.map do |guessx|
  thisLetterDoesntMatchTheWord = true
  letter.map do |letterx|
	  if letterx == guessx # because of my double-breaks, this is effectively letter.0 == guessx (and on and on)
		thisLetterDoesntMatchTheWord = false
		break
	  else
		graveyardTally -= 1
		break #something about this "break" breaks something: either I get the correct tally or I get the correct "wrong" letters
	  end
	end
	  if thisLetterDoesntMatchTheWord
		print guessx + " "
	  #else
		#print "_ "
	  end
	end
print "| " + graveyardTally.to_s + " wrong guesses remain"


=begin
guessArray.map do |element|
  graveyardArray << element
end

also this: 

a = [1, 2, 3, 4, 5]
b = [11, 22, 33, 44]
a.map! { |x| x == 5 ? b : x }.flatten!

graveyardTally = 6
while graveyardTally > 0 do 
  puts graveyardTallly #the actual loop action will be different.
  graveyardTally -= 1
end 
  

=end
