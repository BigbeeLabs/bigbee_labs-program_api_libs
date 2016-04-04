module BigbeeLabs
  module ProgramApi
    module Base
      def self.included(base)
        base.class_eval do
          include BigbeeLabs::RemoteModels::Base
        end
      end      
    end
  end
end