require_relative "base"

module Mediators
  class CreateFollower < Mediators::Base
    def call(follower_id:, to_follow_id:)
      result = Follower.create!({follower_id: follower_id, to_follow_id: to_follow_id})

      result
    end
  end
end
