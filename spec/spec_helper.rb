# Dir["../patterns/**/*.rb"].each {|f| require f}

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'patterns'))

require 'repository-pattern/customer_repo'

RSpec.configure do |config|  
end