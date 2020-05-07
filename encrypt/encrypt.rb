def encrypt(sentence)
  # create an array with the alphabet 
  alphabet = ('A'..'Z').to_a

  # split the sentence in letters
  letters = sentence.upcase.split('')

  # loop over the elements
  new_array = letters.map do |l|
  	# find the index of the element in the alphabet
  	i_in_alpha = alphabet.index(l) 

  	# if we have i_in_alpha
  	if i_in_alpha != nil
	  	# our letter is in the alphabet and we can shift
	  	shifted_i_in_alpha = i_in_alpha - 3
	  	
	  	# use index to go back 3 letters in alphabet
	  	alphabet[shifted_i_in_alpha]
  	else 
  		# return the original letter (because it's a space or symbol)
  		l
  	end
  end
  
  # join back 
  p new_array.join
end

p encrypt('def def') == 'ABC ABC'