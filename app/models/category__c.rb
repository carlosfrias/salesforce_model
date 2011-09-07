require 'active_resource_base_extension'

class Category__c < Salesforce::Rest::AsfRest

  schema do
    string 'name', 'category_name__c', 'description__c', 'image__c', 'url_friendly_name__c'
  end

end