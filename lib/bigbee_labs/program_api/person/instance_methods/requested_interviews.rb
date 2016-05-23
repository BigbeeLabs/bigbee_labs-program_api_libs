module BigbeeLabs
  module ProgramApi
    module Person
      module InstanceMethods
        module RequestedInterviews

          def interview_requests_url
            puts "in #{self.class}.#{__method__}, message"
            my_klass.url = "#{self.class::APP_PROVIDER.url}/people/#{self.id}/interview_requests"
            #my_klass.append_query
          end

          def interview_requests
            my_klass.called_by = __method__.to_s
            remote_result = generic('get').tap do |var|
              puts "in #{self.class}.#{__method__}, var: #{var}"
            end
          end

          private :interview_requests_url
        end
      end
    end
  end
end