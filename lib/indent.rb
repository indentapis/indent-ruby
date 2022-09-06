# Ensure protobuf is available
$LOAD_PATH << File.expand_path('./api', __dir__)

module Indent
  extend SingleForwardable

  class << self
    def configure(&b)
      yield config
    end

    private

    def default_client

    end

    def config
      @config ||= Config.new
    end
  end
end