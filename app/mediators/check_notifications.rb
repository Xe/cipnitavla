require_relative "base"

USER = "shachi"

module Mediators
  class CheckToSendNotification < Mediators::Base
    def call(body:, user_id:)
      if user_id == USER
        return "hi shachi"
      end

      if body.include?("meme")
        return "thanks for posting memes <3"
      end

      false
    end
  end
end
