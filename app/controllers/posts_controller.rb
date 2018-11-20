class PostsController < ApplicationController
  def create
    args = {
      #user_id: request.env["bouncer.user"],
      user_id: "shachi", # orca
      body:    params[:body],
    }

    Mediators::CreatePost.run(args)
  end

  def read
  end

  def delete
  end
end
