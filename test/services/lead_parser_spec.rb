require 'test_helper'

class LeadParserTest < ActiveSupport::TestCase
  test "should parse lead text to customer model" do
  	parser = LeadParser.new file_fixture('test_lead.txt').read
  	p parser.parse
    assert parser.content
  end
end
