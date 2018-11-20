require_relative "base"

module Mediators
  class DeletePost < Mediators::Base
    def call(post_id:)
      Post.find(post_id).destroy
    end
  end
end
