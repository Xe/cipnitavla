class DebugController < ApplicationController
  def env
    render json: {
             "user": request.env["bouncer.user"],
             "email": request.env["bouncer.email"],
           }
  end
end
