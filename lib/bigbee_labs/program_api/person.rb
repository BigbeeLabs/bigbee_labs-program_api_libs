module BigbeeLabs
  module ProgramApi
    module Person

      def self.included(base)
        base.class_eval do
          include BigbeeLabs::GraphApi::Person
          acts_as_relating_to :enrolled_programs, as: 'participant', class_name: 'BigbeeGraph::Program', remote: true
          #acts_as_having      :permissioned_applications, class_name: 'AppCollaborators::AppClient', remote: true
        end
      end
      
    end
  end
end