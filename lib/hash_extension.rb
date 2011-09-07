class Hash
  def to_conditions
    conditions = self.map do |k, v|
      if k.to_s.eql?("id")
        c = "#{k} = '#{v}'"
      else
        c = "#{k} LIKE '%#{v}%'"
      end
      c
    end.join(" AND ")
  end
end