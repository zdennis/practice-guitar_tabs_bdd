require File.dirname(__FILE__) + '/../spec_helper'

describe Tab do
  context 'constructing a tab' do
    it 'should parse the tab' do
      ascii_tab = 'e|----------A3-B6'
      tab_parser = mock("tab parser")
      tab_parser.should_receive(:parse).with(ascii_tab)
      Tab.new(ascii_tab, tab_parser)
    end
  end
  
  describe '#notes_to_be_played' do
    it 'should return notes to be played in order' do
      ascii_tab = 'e|----------A3-B6'
      notes = %w(A3 B6)
      tab_parser = mock("tab parser", :parse => notes)
      
      tab = Tab.new(ascii_tab, tab_parser)
      tab.notes_to_be_played.should == notes
    end
  end
end
