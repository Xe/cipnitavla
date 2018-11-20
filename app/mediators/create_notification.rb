require_relative "base"
require_relative "read_post"

module Mediators
  class CreateNotification < Mediators::Base
    def call(user_id:, post:, message:)
      Notification.create!({
        user_id: user_id,
        post:    post,
        message: message,
      })
    end
  end
end
