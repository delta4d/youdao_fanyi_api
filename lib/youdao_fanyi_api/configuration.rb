module YoudaoFanyiAPI
  module Configuration
    VALID_OPTIONS   = %i[key keyfrom].freeze
    DEFAULT_OPTIONS = %i[type doctype version].freeze
    OPTIONS         = VALID_OPTIONS + DEFAULT_OPTIONS
    DEFAULT_TYPE    = 'data'
    DEFAULT_DOCTYPE = 'json'
    DEFAULT_VERSION = '1.1'

    attr_accessor *OPTIONS

    def self.extended(base)
      base.reset
    end

    def reset
      self.key     = nil
      self.keyfrom = nil
      self.type    = DEFAULT_TYPE
      self.doctype = DEFAULT_DOCTYPE
      self.version = DEFAULT_VERSION
    end

    def configure
      yield self
    end

    def options
      OPTIONS.collect { |key| [key, send(key)] }.to_h
    end
  end
end
