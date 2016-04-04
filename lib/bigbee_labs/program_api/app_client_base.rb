module BigbeeLabs
  module ProgramApi
    module AppClientBase

      def self.included(base)
        base.class_eval do
          include AppCollaborators::RemoteModels::AppClientBase
=begin
          const_set("REMOTE_ATTRIBUTES", [:id, :name, :created_at, :updated_at, :details])
          const_set("REMOTE_REQUIRES",   [:name])
          const_set("REMOTE_PERMITS",    [:id, :name, :details])
=end
        end
      end          
    end
  end
end