require File.dirname(__FILE__) + '/../spec_helper'

describe PlayedNotesConvertor do
  before(:each) do
    @convertor = PlayedNotesConvertor.new
  end
  
  describe '#convert' do
    it 'should convert a string note into a Note' do
      @convertor.convert("A6").should == [A(6)]
    end
    
    it 'should be able to convert an array of notes into Notes' do
      @convertor.convert("A6", "B3").should == [A(6), B(3)]
      @convertor.convert(["e1", "D4"]).should == [e(1), D(4)]
    end
    
    it 'should a string containing multiple notes into Notes' do
      @convertor.convert("A6 B3 G5").should == [A(6), B(3), G(5)]
    end
  end
  
end
