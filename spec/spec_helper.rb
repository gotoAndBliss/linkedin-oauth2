# This file is required by all tests
require 'linkedin-oauth2'

# Record and playback LinkedIn API calls
require 'vcr'
VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end
