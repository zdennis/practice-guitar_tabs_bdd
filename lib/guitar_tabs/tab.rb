class Tab
  attr_reader :notes_to_be_played
  
  def initialize(tablature, parser)
    @notes_to_be_played = parser.parse(tablature)
  end
end