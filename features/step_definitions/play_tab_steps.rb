Given /^tab$/ do |tablature|
  @tab = Tab.new(tablature, TabParser.new)
end
When /^the guitar plays$/ do
  @guitar = Guitar.new
  @guitar.play(@tab)
end
Then /^the following notes will be played$/ do |notes|
  expected_notes = PlayedNotesConvertor.new.convert notes
  @guitar.should play(expected_notes)
end