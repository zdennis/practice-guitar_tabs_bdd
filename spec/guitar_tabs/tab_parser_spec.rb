require File.dirname(__FILE__) + '/../spec_helper'

describe TabParser do
  describe '#parse' do
    it 'should convert tablature into notes to be played' do
      ascii_tab =<<-TAB.gsub(/^\s+/, '')
        e|--------------7--5------------
        B|--------4-4-4-----------------
        G|-------3----------------------
        D|-----2------------------------
        A|---1--------------------------
        E|-1----------------------------
      TAB
      
      parser = TabParser.new
      notes = parser.parse(ascii_tab)
      notes.should == [E(1), A(1), D(2), G(3), B(4), B(4), B(4), e(7), e(5)]
    end
  end
end
