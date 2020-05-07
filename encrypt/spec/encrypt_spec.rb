require_relative '../encrypt'

describe '#encrypt' do
	it 'returns an encrypted message' do
		actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
		expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
		expect(actual).to eq(expected) # actual == expected
	end	
end