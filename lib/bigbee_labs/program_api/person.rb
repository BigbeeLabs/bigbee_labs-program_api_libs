model = "person"
gem_spec = Gem::Specification.find_by_name("bigbee_labs-program_api_libs")
sub_dir = "/lib/bigbee_labs/program_api/#{model}"
files_to_require = Dir["#{gem_spec.gem_dir}#{sub_dir}/*.rb"]
files_to_require.each{|f| require_dependency f}


module BigbeeLabs
  module ProgramApi
    module Person

      def self.included(base)
        base.class_eval do
          include BigbeeLabs::GraphApi::Person
          include InstanceMethods
          acts_as_relating_to :enrolled_programs, as: 'participant', class_name: 'BigbeeGraph::Program', remote: true
          #acts_as_having      :permissioned_applications, class_name: 'AppCollaborators::AppClient', remote: true
        end
      end
      
    end
  end
end