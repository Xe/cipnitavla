require_relative "../mediators/create_follower"

class FollowerController < ApplicationController
  def create
    args = {
      follower_id: params[:follower_id],
      to_follow_id: params[:to_follow_id]
    }

    render json: Mediators::CreateFollower.run(args)
  end
end
