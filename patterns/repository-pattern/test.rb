require_relative 'repo'

Customer = Struct.new :name, :id

c1 = Customer.new("Dave", "1")

Repo.adapter = MyAdapter.new # creates the adapter

Repo.create(c1)

# CustomersWithName is a struct to represent a query object but it can be anything e.g. AR relation etc
CustomersWithName = Struct.new :name

res = Repo.query(Customer, CustomersWithName.new("Dave2"))

p "Response is  - #{res}"
