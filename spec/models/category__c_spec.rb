require 'spec_helper'

describe Category__c do
  let(:category) { Category__c.new }
  specify { category.should be_valid }

  let(:categories) { Category__c.all}
  specify { categories.should be_a_kind_of Array }
  specify { categories.size > 1}

  #it "should display array contents" do
  #  puts "Categories Inpect: #{categories.inspect }"
  #  categories.each { |c| puts "Category: #{c.inspect}"}
  #  puts "Categories size: #{categories.size}"
  #end
end
