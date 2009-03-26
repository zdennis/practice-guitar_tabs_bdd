def play(expected_notes)
  simple_matcher do |instrument, matcher|
    matcher.description = "play the notes: #{expected_notes}"
    matcher.failure_message = "expected guitar to play notes: #{expected_notes.inspect}"
    instrument.notes_played.should == expected_notes
  end
end