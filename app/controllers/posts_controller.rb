require_relative "../mediators/create_post"
require_relative "../mediators/read_post"

class PostsController < ApplicationController
  def create
    args = {
      #user_id: request.env["bouncer.user"],
      user_id: "shachi", # orca
      body:    params[:body],
    }

    render json: Mediators::CreatePost.run(args)
  end

  def read
    args = {
      post_id: params[:id],
    }

    render json: Mediators::ReadPost.run(args)
  end

  def delete
  end
end
