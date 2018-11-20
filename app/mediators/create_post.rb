require_relative "base"
require_relative "check_notifications"
require_relative "create_notification"

module Mediators
  class CreatePost < Mediators::Base
    def call(body:, user_id:)
      result = Post.create!({body: body, user_id: user_id})

      msg = Mediators::CheckToSendNotification.run({body: body, user_id: user_id})

      if msg
        Mediators::CreateNotification.run({user_id: user_id, post: result, message: msg})
      end

      result
    end
  end
end
