require_relative 'in_memory_backend'

class MyAdapter < InMemoryBackend
  def query_customers_with_name(q)
    customers = all(Customer)

    customers.select do |customer|
      customer.name == q.name
    end
    # all(Customer).select do |customer|
    #   customer.activity_during? q.dates
    # end
  end
end
