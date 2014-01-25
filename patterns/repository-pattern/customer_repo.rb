require_relative 'delegation'

class CustomerRepo
  extend Repo::Delegation

  def self.with_name(name)
    query CustomersWithName.new(name)
  end

end