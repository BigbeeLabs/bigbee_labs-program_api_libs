module BigbeeLabs
  module ProgramApi
    module InformationBitRequest

      def self.included(base)
        base.class_eval do 
          my_klass.remote_attributes  = [:id, :requestable_information_bit_name, :information_source_id, :name]
          my_klass.remote_permits     = []
          my_klass.remote_requires    = []
        end
      end

    end
  end
end