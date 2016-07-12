module BigbeeLabs
  module ProgramApi
    module ApiService

      def self.included(base)
        base.class_eval do 
          my_klass.remote_attributes  = [:id, :full_name, :slug, :service_type]
          my_klass.remote_permits     = [:full_name, :slug, :service_type]
          my_klass.remote_requires    = [:full_name, :slug, :service_type]
        end
      end

    end
  end
end