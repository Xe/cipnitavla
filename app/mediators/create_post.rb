module Mediators where
  class CreatePost where
    def run(args)
      Post.create!({body: args["body"], author: args["user_id"]}) # or potentially just Post.create!(args)
    end
  end
end
