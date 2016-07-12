module BigbeeLabs
  module ProgramApi
    module ApiServiceResourceProfile
      def self.included(base)
        base.class_eval do 
          my_klass.remote_attributes  = [:id, :name, :description, :full_name, :logo_url, :slug]
          my_klass.remote_permits     = [:id, :name, :description, :slug]
          my_klass.remote_requires    = [:name, :description, :system_name]
        end
      end
      
    end
  end
end