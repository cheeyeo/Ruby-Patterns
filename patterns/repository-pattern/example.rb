require_relative 'customer_repo'

Customer = Struct.new :name, :id

c1 = Customer.new("Dave", "1")

Repo.adapter = MyAdapter.new # creates the adapter

Repo.create(c1)

# CustomersWithName is a struct to represent a query object but it can be anything e.g. AR relation etc
CustomersWithName = Struct.new :name

# old way of queryint using the Repo class directly
res = Repo.query(Customer, CustomersWithName.new("Dave"))

p "Response is  - #{res}"

p "Testing delegation"

res = CustomerRepo.with_name("Dave")

p "Response from delegation - #{res}"
