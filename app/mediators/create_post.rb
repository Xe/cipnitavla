require_relative "base"

module Mediators
  class CreatePost < Mediators::Base
    def call(body:, user_id:)
      Post.create!({body: body, user_id: user_id})
    end
  end
end
