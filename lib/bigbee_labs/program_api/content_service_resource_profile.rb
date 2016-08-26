module BigbeeLabs
  module ProgramApi
    module ContentServiceResourceProfile
      def self.included(base)
        base.class_eval do 
          my_klass.remote_attributes  = [:id, :display_name, :slug, :logo_url]
          my_klass.remote_permits     = [:id, :display_name, :slug, :logo_url]
          my_klass.remote_requires    = [:display_name, :slug]
        end
      end
      
    end
  end
end