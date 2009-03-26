class Note
  attr_reader :guitar_string, :fret
  
  def initialize(guitar_string, fret)
    @guitar_string = guitar_string
    @fret = fret
  end
  
  def ==(other)
    guitar_string == other.guitar_string &&
      fret == other.fret
  end
end

%w(e B G D A E).each do |note|
  eval <<-CODE
    def #{note}(fret)
      Note.new('#{note}', fret)
    end
  CODE
end
