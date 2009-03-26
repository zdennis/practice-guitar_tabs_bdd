class Guitar
  attr_reader :notes_played
  
  def play(tab)
    @notes_played = tab.notes_to_be_played
  end
end