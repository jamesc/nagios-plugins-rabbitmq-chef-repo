current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jamesc"
client_key               "#{ENV['HOME']}/.chef/#{ENV['USER']}.pem"
validation_client_name   "rabbitmq_test-validator"
validation_key           "#{ENV['HOME']}/.chef/validators/rabbitmq_test-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/rabbitmq_test"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
