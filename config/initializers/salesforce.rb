 #loading ASF-REST-Adapter and ASF-SOAP-Adapter
require 'asf-rest-adapter'

config_file = Rails.root.to_s + "/config/salesforce_config.yml"
Salesforce::Rest::AsfRest.ignite_adapter(config_file)

