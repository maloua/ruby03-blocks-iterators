require_relative '../acronymize'

describe "acronymize method" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected) # `actual == expected`
  end

  it "returns the acronym on uppercased sentences" do
    actual = acronymize("Test Driven Development")
    expected = 'TDD'
    expect(actual).to eq(expected)
  end

  it "returns the acronym on downcased sentences" do
    actual = acronymize("away from keyboard")
    expected = 'AFK'
    expect(actual).to eq(expected)
  end

  it "returns the acronym on mixedcased sentences" do
    actual = acronymize("Thank God it's Friday")
    expected = 'TGIF'
    expect(actual).to eq(expected)
  end
end