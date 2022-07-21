module DebugHang
  module SampleConcern
    extend ActiveSupport::Concern

    def respond_to_missing?(method, include_private = false)
      method.to_s.start_with?("test_") || super
    end

    def method_missing(method, *args, &block)
      binding.b

      if method.to_s =~ /^test_/
        puts "Running test: #{method}"
        super
      else
        super
      end
    end
  end
end
