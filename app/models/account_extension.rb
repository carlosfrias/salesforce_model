require 'asf-rest-adapter'

module Salesforce
  module Rest
    class Account < AsfRest
      def self.find(params)
        if !params.nil?
          if params.respond_to? :to_conditions
            query = "SELECT #{known_attributes.join(', ')} FROM #{self.name.split('::')[-1]} WHERE #{params.to_conditions}"
            resp = run_soql query
            return ActiveSupport::JSON.decode(resp.body)['records'][0]
          else
            resp = super.find(params)
            puts "From ASFRest::Account find we get:  #{resp.inspect}"
            return resp
          end
        end
      end
    end
  end
end