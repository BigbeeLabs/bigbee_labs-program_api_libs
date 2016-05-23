model = "interview_request"
gem_spec = Gem::Specification.find_by_name("bigbee_labs-program_api_libs")
sub_dir = "/lib/bigbee_labs/program_api/#{model}"
files_to_require = Dir["#{gem_spec.gem_dir}#{sub_dir}/*.rb"]
files_to_require.each{|f| require_dependency f}

module BigbeeLabs
  module ProgramApi
    module InterviewRequest
      
      def self.included(base)
        base.class_eval do 
          include InstanceMethods
          my_klass.remote_attributes  = [:interview_request_id, :resource_owner_id, :information_request]
          my_klass.remote_permits     = []
          my_klass.remote_requires    = []
        end
      end

    end
  end
end