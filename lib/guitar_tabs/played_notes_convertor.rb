class PlayedNotesConvertor
  def convert(*note_strings)
    notes = flatten_note_strings note_strings
    notes.inject([]) do |arr, note|
      guitar_string, fret = note.split(//)
      arr << send(guitar_string, fret.to_i)
    end
  end
  
  protected
  
  def flatten_note_strings note_strings
    note_strings.flatten.map do |note|
      note.scan(/[A-z]\d/)
    end.flatten
  end
end