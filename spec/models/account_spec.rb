require 'spec_helper'

Account = Salesforce::Rest::Account

describe Account do
  it { should be_valid }
  let(:test_account_name) { 'Duston Mounts' }

  context "searching" do
    #'001A000000hjVsMIAU'
    let(:account_by_name) { Account.find('Name' => test_account_name) }
    specify { account_by_name.should_not be_nil}

    it "should find an account by name" do
      puts "Account by name:  #{account_by_name}"
      puts "Account ID: #{account_by_name['Id']}"
    end

    let(:account_by_id) { Account.find account_by_name['Id'] }
    specify { account_by_id.should_not be_nil }

    it "should find an account by id" do
      puts "Account by id:  #{account_by_id}"
    end

  end

end

