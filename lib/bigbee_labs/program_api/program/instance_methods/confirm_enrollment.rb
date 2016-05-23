module BigbeeLabs
  module ProgramApi
    module Program
      module InstanceMethods
        module ConfirmEnrollment
          def confirm_enrollment(person_id)
            puts "in #{self.class}.#{__method__}, person_id: #{person_id}"
            my_klass.called_by = "confirm_enrollment"
            remote_result = generic('get').tap do |var|
              puts "in #{self.class}.#{__method__}, var: #{var}"
            end
          end
        end
      end
    end
  end
end