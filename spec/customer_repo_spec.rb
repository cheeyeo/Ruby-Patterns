require 'spec_helper'

describe CustomerRepo do
  it "is a Repo Delegation" do
  	expect(CustomerRepo.is_a?(Repo::Delegation)).to be_true
  end

  it "finds customers by name" do
    Customer = Struct.new :name, :id
    c1 = Customer.new("Dave", "1")

    Repo.adapter = MyAdapter.new # creates the adapter
    Repo.create(c1)
    CustomersWithName = Struct.new :name
    res = CustomerRepo.with_name("Dave")

    expect(res).to include(c1)
  end
end