# frozen_string_literal: true

class UniformNotifier
  class HoneybadgerNotifier < Base
    def self.active?
      !!UniformNotifier.honeybadger
    end

    protected

    def self._out_of_channel_notify(data)
      message = data.values.compact.join("\n")

      opt = {}
      opt = UniformNotifier.honeybadger if UniformNotifier.honeybadger.is_a?(Hash)

      exception = Exception.new(message)
      Honeybadger.notify(exception, opt)
    end
  end
end
