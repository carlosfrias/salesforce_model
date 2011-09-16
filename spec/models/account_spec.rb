require 'spec_helper'

Account = Salesforce::Rest::Account

describe Account do
  it { should be_valid }
  let(:test_account_name) { 'Duston Mounts' }

  context "searching with ad-hoc parameters" do
    #'001A000000hjVsMIAU'
    let(:account_by_name) { Account.find('Name' => test_account_name) }
    specify { account_by_name.should_not be_nil }
    specify { account_by_name['Name'].should eq test_account_name }

    #it "should find an account by name" do
    #  puts "Account by name:  #{account_by_name}"
    #  puts "Account ID: #{account_by_name['Id']}"
    #end

    context "basic find should continue to work as usual" do
      let(:account_by_id) { Account.find account_by_name['Id'] }
      specify { account_by_id.should_not be_nil }
      specify { account_by_id['Id'].should eq account_by_name['Id'] }
      specify { account_by_id.Id.should eq account_by_name['Id'] }
      specify { account_by_id.id.should eq account_by_name['Id'] }
      #specify { account_by_id['Id'].should eq account_by_name['Id'] }

      it "and find an account by id" do
        puts "Account by id:  #{account_by_id.inspect}"
        #puts "Account by Id size: #{account_by_id.count}" # errors out
        #puts "Find name: #{account_by_id.find('Name')}" # outputs class name, useless
        #account_map = account_by_id.collect do |it|
        #  begin
        #    {it[0] => it[1]}
        #  rescue
        #    #ignore for now
        #  end
        #end
        #puts "Account map: #{account_map.inspect}"

        account_by_id.each do |it|

          puts "Item class name: #{it.class.name} #{it.inspect}"

        end

        #puts "Account by name: #{account_by_name['Name']}"
      end

    end
  end

end

