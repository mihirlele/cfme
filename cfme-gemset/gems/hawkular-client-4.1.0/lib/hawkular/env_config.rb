require 'logger'

module Hawkular
  module EnvConfig
    module_function

    def log_response?
      ENV['HAWKULARCLIENT_LOG_RESPONSE']
    end

    def rest_timeout
      ENV['HAWKULARCLIENT_REST_TIMEOUT']
    end
  end
end
