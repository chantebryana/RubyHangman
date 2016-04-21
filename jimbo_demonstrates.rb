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
