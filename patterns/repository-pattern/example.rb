require_relative 'customer_repo'

class Customer < OpenStruct
end

c1 = Customer.new(name: "Dave", id: "1")

Repo.adapter = MyAdapter.new # creates the adapter

Repo.create(c1)

# CustomersWithName is a struct to represent a query object but it can be anything e.g. AR relation etc
class CustomersWithName < OpenStruct
end

# old way of queryint using the Repo class directly
res = Repo.query(Customer, CustomersWithName.new(name: "Dave"))

p "Response is  - #{res}"

p "Testing delegation"

res = CustomerRepo.with_name("Dave")

p "Response from delegation - #{res}"
