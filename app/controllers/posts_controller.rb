require_relative "../mediators/create_post"
require_relative "../mediators/delete_post"
require_relative "../mediators/for_user"
require_relative "../mediators/read_post"

class PostsController < ApplicationController
  def create
    args = {
      user_id: request.env["bouncer.user"],
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
    args = {
      post_id: params[:id],
    }

    render json: Mediators::DeletePost.run(args)
  end

  def for_user
    args = {
      user_id: params[:user_id]
    }

    render json: Mediators::ForUser.run(args)
  end
end
