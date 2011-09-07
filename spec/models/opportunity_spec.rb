require 'spec_helper'

Opportunity = Salesforce::Rest::Opportunity

describe Opportunity do
  it { should be_valid }

  let(:test_account_name) { 'Duston Mounts' }
  #let(:test_account_id) { Salesforce::Rest::Account.find_account_by_name test_account_name }
  #specify { test_account_id.should be_valid}

  #let(:opportunities) { }

#  let(:query_fields) { "select id from Opportunity " }
#  let(:constraint) { "where (NOT StageName  LIKE '%CLOSED%')" }
#  let(:all_opportunities) { "#{query_fields} #{constraint}" }
#  let(:opportunities_by_account_id) { "#{all_opportunities} and AccountId = '#{account_id}'" }
#
#  let(:opportunities_by_account_id_response) { rest.run_soql(opportunities_by_account_id) }
#  specify { opportunities_by_account_id_response.should_not be_nil }
#
#  let(:opportunity_result) { transform_to_json(opportunities_by_account_id_response) }
#  specify { opportunity_result.should_not be_nil }
#
#  let(:opportunity_record) { opportunity_result['records'].first }
#  specify { opportunity_record.should_not be_nil }
#
#  let(:opportunity_record_id) { opportunity_record['Id'] }
#  specify { opportunity_record_id.should_not be_nil }
#
#  let(:product_id) { Product.all.first.id }
#  specify { product_id.should_not be_nil }
#
#  let(:user) { User.find_by_name account_name }
#  specify { user.should_not be_nil }
#  specify { user.name.should == account_name }
#
#  let(:price_book2_query) { "select Id from Pricebook2 where isStandard=false" }
#  let(:price_book2_response) { rest.run_soql(price_book2_query) }
#  specify { price_book2_response.should_not be_nil }
#
#  let(:price_book2_id) { price_book2_response.parsed_response["records"][0]["Id"] }
#  specify {price_book2_id.should_not be_nil }
#
#  let(:product2_response) { rest.find("Product2", product_id) }
#  specify { product2_response.should_not be_nil }
#
#  let(:product2_id) { product2_response.parsed_response["Id"] }
#  specify { product2_id.should_not be_nil }
#
#  let(:price_book_entry_query) { "SELECT Id, ProductCode, UnitPrice from PricebookEntry where Product2Id =
#'#{product2_id}' and Pricebook2Id = '#{price_book2_id}' " }
#  let(:price_book_entry_response) { rest.run_soql(price_book_entry_query) }
#  specify {price_book_entry_response.should_not be_nil}
#
#  let(:unit_price) { price_book_entry_response.parsed_response["records"][0]["UnitPrice"] }
#  specify {unit_price.should_not be_nil }
#
#  let(:price_book_entry_id) { price_book_entry_response.parsed_response["records"][0]["Id"] }
#  specify {price_book_entry_id.should_not be_nil }
#
#  let(:opportunity_ids) { Opportunity.create_new(account_id, product_id, user) }
#  specify { opportunity_ids.class.should_not be_nil }
#
#
#  it "printing results for visual inspection" do
#    puts "Product Id: #{product_id}"
#    puts "User: #{user.inspect}"
#    puts "Account ID: #{account_id}"
#    puts "Price Book2 Id: #{price_book2_id}"
#    puts "Price Book2 Response: #{price_book2_response}"
#    puts "Product2 ID: #{product2_id}"
#    puts "Product2 Response: #{product2_response}"
#    puts "Price Book Entry Response: #{price_book_entry_response.inspect}" if price_book_entry_response
#    puts "Unit Price: #{unit_price}" if unit_price
#    puts "Price Book Entry Id: #{price_book_entry_id}" if price_book_entry_id
#    puts "Opportunity Ids: #{opportunity_ids}" if opportunity_ids
#  end
#
#  private
#  def transform_to_json(salesforce_response)
#    salesforce_response.should_not be_nil
#    salesforce_result = JSON.decode(salesforce_response.body)
#    salesforce_result.should_not be_nil
#    salesforce_result
#  end

end
