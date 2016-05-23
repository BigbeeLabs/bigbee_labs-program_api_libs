model = "interview_request"
gem_spec = Gem::Specification.find_by_name("bigbee_labs-program_api_libs")
sub_dir = "/lib/bigbee_labs/program_api/#{model}/instance_methods"
files_to_require = Dir["#{gem_spec.gem_dir}#{sub_dir}/*.rb"]
files_to_require.each{|f| require_dependency f}

module BigbeeLabs
  module ProgramApi
    module InterviewRequest
      module InstanceMethods
        include NextInformationRequest
      end
    end
  end
end