module BigbeeLabs
  module ProgramApi
    module RequestableInformationBitBase
      def self.included(base)
        base.class_eval do
          const_set("REMOTE_ATTRIBUTES", [:id, :information_source_type, :name])
          const_set("REMOTE_REQUIRES",   [:information_source_type, :name])
          const_set("REMOTE_PERMITS",    [:id, :information_source_type, :name])
          acts_as_having :providers, remote: true

        end
      end      
    end
  end
end