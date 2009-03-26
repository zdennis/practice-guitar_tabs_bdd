require File.dirname(__FILE__) + '/../spec_helper'

describe Note do
  
  describe '#==' do
    context 'with the same guitar string and fret' do
      it 'should return true' do
        Note.new("e", 1).should == Note.new("e", 1)
      end
    end
    
    context 'with same guitar string, but different fret' do
      it 'should return false' do
        Note.new("f", 1).should_not == Note.new("f", 5)
      end
    end

    context 'with same fret, but different guitar string' do
      it 'should return false' do
        Note.new("f", 1).should_not == Note.new("a", 1)
      end
    end
  end
  
end
