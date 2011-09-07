module ActiveResource
  class Base
    def self.all
      sql = "SELECT #{known_attributes.join(', ')} FROM #{self.name}"
      resp = Salesforce::Rest::AsfRest.run_soql(sql)
      records =[]
      ActiveSupport::JSON.decode(resp.body)['records'].each do |record|
        c = self.new
        c.load record
        records << c
      end
      records
    end

  end

end