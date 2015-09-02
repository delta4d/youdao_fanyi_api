require 'json'
require 'net/http'

module YoudaoFanyiAPI
  class Client
    PREFIX = 'http://fanyi.youdao.com/openapi.do?'

    def initialize(user_options = {})
      @options = YoudaoFanyiAPI.options.merge(user_options)
    end

    def translate(text, optional = {})
      http_response = get(text, optional)
      json_response = JSON.parse(http_response)
    end

    alias :t :translate

    private

    def post_form(h)
      h.collect { |key, val| "#{key}=#{val}" }.join('&')
    end

    def uri(text, optional)
      escaped_text = URI.escape(text)
      URI(PREFIX + post_form(@options.merge(q: escaped_text).merge(optional)))
    end

    def get(text, optional)
      query = uri(text, optional)
      Net::HTTP.get(query)
    end
  end
end
