module BigbeeLabs
  module ProgramApi
    module InterviewRequest
      module InstanceMethods
        module NextInformationRequest

          def next_information_request_url
            url = my_klass::APP_PROVIDER.url
            url = "#{url}/interview_requests/#{interview_request_id}"
            my_klass.url = url
          end

          def next_information_request
            my_klass.called_by = __method__.to_s
            generic('get')
          end

          private :next_information_request_url

        end
      end
    end
  end
end