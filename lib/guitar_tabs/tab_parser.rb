require 'generator'

class TabParser
  def parse(ascii_tab)
    strings = break_tabs_down_by_string ascii_tab
    turn_plucked_frets_into_notes strings
  end
  
  protected
  
  def break_tabs_down_by_string(tablature)
    strings = {}
    tablature.split(/\n/).each do |line|
      md = line.match(/^(.)\|(.*)/)
      strings[md.captures[0]] = md.captures[1].split(//).map{ |fret| "#{md.captures[0]}#{fret}" }
    end
    strings
  end
  
  def note_from_string(note_string)
    method, arg = note_string.split(//)
    send(method, arg.to_i)
  end
  
  def turn_plucked_frets_into_notes(strings)
    string_enumerator = SyncEnumerator.new(
      strings["e"], 
      strings["B"], 
      strings["G"], 
      strings["D"], 
      strings["A"], 
      strings["E"])
    notes_to_play = []
    string_enumerator.each do |notes|
      notes.each do |note|
        next if note =~ /-/
        notes_to_play << note_from_string(note)
      end
    end
    notes_to_play    
  end
end
