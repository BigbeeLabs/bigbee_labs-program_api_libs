module BigbeeLabs
  module ProgramApi
    module ContentService

      def self.included(base)
        base.class_eval do 
          my_klass.remote_attributes  = [:id, :display_name, :slug]
          my_klass.remote_permits     = [:display_name, :slug]
          my_klass.remote_requires    = [:display_name, :slug]
        end
      end

    end
  end
end