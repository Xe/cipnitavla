module Mediators
  class CreatePost
    def run(body:, user_id:)
      Post.create!({body: args["body"], author: args["user_id"]})
    end
  end
end
