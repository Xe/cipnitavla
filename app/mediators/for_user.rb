require_relative "base"

module Mediators
  class ForUser < Mediators::Base
    def call(user_id:)
      result = []

      Post.where(user_id: user_id).find_each do |post|
        result << post
      end

      result
    end
  end
end
