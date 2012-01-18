# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
KwAppSegredos::Application.initialize!
require 'koala'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE