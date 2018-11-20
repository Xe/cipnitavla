require_relative "base"

module Mediators
  class ReadPost < Mediators::Base
    def call(post_id:)
      Post.find(post_id)
    end
  end
end
