module Ping
  class ApplicationController < ActionController::API
    FORCE_LOGGING = !!ENV.fetch('FORCE_LOG_PING', false)

    def ping
      render plain: "PONG"
    end

    def process(action, *args)
      if self.class.force_log_ping?
        super
      else
        logger.silence do
          super
        end
      end
    end

    private

    def self.force_log_ping?
      FORCE_LOGGING
    end

  end
end
