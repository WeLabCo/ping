module Ping
  class ApplicationController < ActionController::API
    def ping
      render plain: "PONG"
    end
  end
end
