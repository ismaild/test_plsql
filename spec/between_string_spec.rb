require 'spec_helper'
require "between_string"

describe 'Between String' do
  it "should substring from anywhere in the string" do
    plsql.betwnstr('abcdefg', 2, 5).should == 'bcde'
  end

  it "should substring from the start of the string" do
    plsql.betwnstr('abcdefg', 0, 5).should == 'abcde'
  end

  it "should substring when the end param is greater than end of the string " do
    plsql.betwnstr('abcdefg', 5, 100).should == 'efg'
  end

  it "should not return anything for a null string" do
    plsql.betwnstr(nil, 0,5).should be_nil
  end
end