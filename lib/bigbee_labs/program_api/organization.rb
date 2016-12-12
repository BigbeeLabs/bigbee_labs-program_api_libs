module BigbeeLabs
  module ProgramApi
    module Organization
      def self.included(base)
        base.class_eval do 
          include InstanceMethods
          
          my_klass.remote_attributes  = [:id, :short_name, :full_name, :ein, :description, :code, :created_at, :updated_at, :slug, :resource_owner_id, :errors]
          my_klass.remote_requires    = [:full_name, :description, :code]
          my_klass.remote_permits     = [:id, :short_name, :full_name, :ein, :description, :code, :slug]

          acts_as_having :published_programs, class_name: 'BigbeeGraph::Program', remote: true
        end
      end
      
    end
  end
end