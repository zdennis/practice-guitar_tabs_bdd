require File.dirname(__FILE__) + '/../spec_helper'

describe Guitar do
  describe '#play' do
    it "should play the notes transcribed in the given tab" do
      axe = Guitar.new
      tab = mock "tab", :notes_to_be_played => %w(A1 B2)
      
      axe.play tab
      
      axe.notes_played.should == %w(A1 B2)
    end
  end
end