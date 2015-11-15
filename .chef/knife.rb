# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "joegardiner"
client_key               "#{current_dir}/joegardiner.pem"
validation_client_name   "jg-chef-training-validator"
validation_key           "#{current_dir}/jg-chef-training-validator.pem"
chef_server_url          "https://api.chef.io/organizations/jg-chef-training"
cookbook_path            ["#{current_dir}/../cookbooks"]
