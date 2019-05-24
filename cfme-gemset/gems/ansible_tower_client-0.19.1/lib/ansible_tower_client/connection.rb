require 'openssl'

module AnsibleTowerClient
  class Connection
    attr_reader :connection

    def initialize(options = nil)
      raise "Credentials are required" unless options[:username] && options[:password]
      raise ":base_url is required" unless options[:base_url]
      logger     = options[:logger] || AnsibleTowerClient.logger
      verify_ssl = options[:verify_ssl] || OpenSSL::SSL::VERIFY_PEER
      verify_ssl = verify_ssl == OpenSSL::SSL::VERIFY_NONE ? false : true

      require 'faraday'
      require 'faraday_middleware'
      require 'ansible_tower_client/middleware/raise_tower_error'
      Faraday::Response.register_middleware :raise_tower_error => -> { Middleware::RaiseTowerError }
      @connection = Faraday.new(options[:base_url], :ssl => {:verify => verify_ssl}) do |f|
        f.use(FaradayMiddleware::EncodeJson)
        f.use(FaradayMiddleware::FollowRedirects, :limit => 3, :standards_compliant => true)
        f.request(:url_encoded)
        f.response(:raise_tower_error)
        f.response(:logger, logger)
        f.adapter(Faraday.default_adapter)
        f.basic_auth(options[:username], options[:password])
      end
    end

    def api
      @api ||= Api.new(connection)
    end
  end
end
