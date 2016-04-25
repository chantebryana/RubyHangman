$availableFails = 6

def isLetterNotInList?(letter, list)
	letterNotInList = true
	list.each do |listLetter|
		if letter == listLetter
			letterNotInList = false
			break
		end
	end
	letterNotInList
end

def doThisWhenNotFound(letter)
	print " " + letter
	$availableFails -= 1
end

=begin
def doThisWhenFound(letter)
	indicateCorrectGuess(letter)
end
=end

considerLetters = ['a','b','c']
matchList = ['c','d','e']
considerLetters.each do |letter|
	if isLetterNotInList?(letter, matchList)
		doThisWhenNotFound(letter)
#	else
#		doThisWhenFound(letter)
	end
end

=begin
This is what the above code looks like if I combine all of the def's together into one big loop:

$availableFails = 6
considerLetters = ['a', 'b', 'c']
matchList = ['c', 'd', 'e']

considerLetters.each do |considerLettersZ|
  letterNotInList = true
  matchList.each do |matchListZ|
    if considerLettersZ == matchListZ
      letterNotInList = false
      break
    end
  end
  if letterNotInList
    print " " + considerLettersZ
    $availableFails -= 1
  end
end

=end 