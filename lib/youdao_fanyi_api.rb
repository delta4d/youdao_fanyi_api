require "youdao_fanyi_api/client"
require "youdao_fanyi_api/version"
require "youdao_fanyi_api/configuration"

module YoudaoFanyiAPI
  extend YoudaoFanyiAPI::Configuration

  class << self
    def client
      @client ||= Client.new
    end

    def method_missing(method, *args, &block)
      return super unless client.respond_to?(method)
      client.send(method, *args, &block)
    end
  end
end
