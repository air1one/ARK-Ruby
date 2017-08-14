module Ark
  module Configurable
    attr_accessor :ip, :port, :nethash, :version
    attr_writer :ip, :port, :nethash, :version

    class << self
      def keys
        @keys ||= [
          :ip,
          :port,
          :nethash,
          :version
        ]
      end
    end

    # Set configuration options using a block
    def configure
      yield self
    end

    # Reset configuration options to default values
    def reset!
      Ark::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", Ark::Default.options[key])
      end
      self
    end
    alias setup reset!

    # Compares client options to a Hash of requested options
    #
    # @param opts [Hash] Options to compare with current client options
    # @return [Boolean]
    def same_options?(opts)
      opts.hash == options.hash
    end

    def api_endpoint
      File.join(@api_endpoint, "")
    end

    # Base URL for generated web URLs
    #
    # @return [String] Default: https://github.com/
    def web_endpoint
      File.join(@web_endpoint, "")
    end

    private

    def options
      Hash[Ark::Configurable.keys.map{|key| [key, instance_variable_get(:"@#{key}")]}]
    end
  end
end
