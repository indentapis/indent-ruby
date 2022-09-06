module Indent
  class Config
    attr_accessor :host, :port, :credentials, :timeout

    DEFAULT_HOST = "platform.indentapis.com".freeze
    DEFAULT_PORT = 443.freeze
    DEFAULT_TIMEOUT = 60.freeze

    def initialize
      @host = DEFAULT_HOST
      @port = DEFAULT_PORT
      @timeout = DEFAULT_TIMEOUT
    end
  end
end