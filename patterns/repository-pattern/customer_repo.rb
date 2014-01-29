require_relative 'delegation'

class CustomersWithName < OpenStruct
end

class CustomerRepo
  extend Repo::Delegation

  def self.with_name(name)
    query CustomersWithName.new(name: name)
  end

end
