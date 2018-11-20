class Fakeauth
  def initialize app, user='shachi'
    @app = app
    @user = user
  end

  def call env
    env["bouncer.user"] = @user
    env["bouncer.email"] = "#{@user}@hunter2.bash.org"
    @status, @headers, @response = @app.call(env)

    [@status, @headers, @response]
  end
end
