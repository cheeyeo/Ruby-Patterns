require_relative 'my_adapter'

class Repo
  def self.adapter
    @adapter
  end

  def self.adapter=(adapter)
    @adapter = adapter
  end

  def self.find(klass, id)
    adapter.find klass, id
  end

  def self.all(klass)
    adapter.all klass
  end

  def self.create(model)
    adapter.create(model)
  end

  def self.update(model)
    adapter.update(model)
  end

  def self.delete(model)
    adapter.delete model
  end

  def self.query(klass, selector)
    adapter.query(klass, selector)
  end

end

# Repo.all(Customer)
# Repo.find(Order, '32489723-832')


