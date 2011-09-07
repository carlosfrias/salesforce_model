require 'spec_helper'

describe Hash do
  let(:test_hash) { {} }
  specify { test_hash.should_not be_nil }
  specify { test_hash.should respond_to :to_conditions }

  let(:test_hash) { {:test_key1 => 'test value 1', :test_key2 => 'test value 2'} }
  specify { test_hash.should_not be_nil }

  let(:test_hash_with_id) { {:test_key1 => 'test value 1', :test_key2 => 'test value 2', :id => 1000} }
  specify {test_hash_with_id.should_not be_nil}

  it "should structure parameters with 'AND' between key/value pairs" do
    conditions = test_hash.to_conditions
    pairs = conditions.split('AND')
    pairs.should_not be_nil
    pairs.size.should be 2
    pairs[0].should include 'test_key1'
    pairs[0].should include 'LIKE'
    pairs[0].should include '%test value 1%'
    pairs[1].should include 'test_key2'
    pairs[1].should include 'LIKE'
    pairs[1].should include '%test value 2%'
  end

  it "should structure id parameters with an '=' between key and value pair" do
    conditions = test_hash_with_id.to_conditions
    pairs = conditions.split('AND')
    pairs.should_not be_nil
    pairs.size.should be 3
    pairs[0].should include 'test_key1'
    pairs[0].should include 'LIKE'
    pairs[0].should include '%test value 1%'
    pairs[1].should include 'test_key2'
    pairs[1].should include 'LIKE'
    pairs[1].should include '%test value 2%'
    pairs[2].should include 'id'
    pairs[2].should include '='
    pairs[2].should include '1000'
  end
end
