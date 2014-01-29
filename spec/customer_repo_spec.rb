require 'spec_helper'

class Customer < OpenStruct
end

describe CustomerRepo do
  it "is a Repo Delegation" do
    expect(CustomerRepo.is_a?(Repo::Delegation)).to be_true
  end

  it "finds customers by name" do
    c1 = Customer.new(name: "Dave", id: "1")
    Repo.adapter = MyAdapter.new # creates the adapter
    Repo.create(c1)

    res = CustomerRepo.with_name("Dave")
    expect(res).to include(c1)
  end
end
