require "bigbee_labs/program_api_libs/version"
=begin
require_dependency "app_collaborators"
require_dependency "bigbee_labs/program_api/base"
require_dependency "bigbee_labs/program_api/event_base"
require_dependency "bigbee_labs/program_api/requestable_information_bit_base"
require_dependency "bigbee_labs/program_api/app_client_base"
require_dependency "bigbee_labs/program_api/person"
=end
Dir[Gem::Specification.find_by_name("bigbee_labs-program_api_libs").gem_dir + "/lib/bigbee_labs/program_api/**/*.rb"].each{|f| require f}

module BigbeeLabs
  module ProgramApiLibs
    # Your code goes here...
  end
end
