class SessionsController < ApplicationController

  def  create
    user = User.from_omniauth(env["omniauth.auth"])
    if user.valid?
      session[:user_id] = user.id 
    redirect_to dashboard_index_path
    else
    redirect_to root_path
    end
  end
end
    # @response = GithubService.get_user("https://github.com/login/oauth/access_token?client_id=#{ENV['GITHUB_KEY']}&client_secret=#{ENV['GITHUB_SECRET']}&code=#{params["code"]}")
    # token = @response.body.split(/\W+/)[1]
    # oauth_response = Faraday.get("https://api.github.com/user?access_token=#{token}")
    # binding.pry
    # auth = JSON.parse(oauth_response.body)
    # # binding.pry
    # user = User.from_omniauth(auth, token)

    # user.name = auth["login"]
    # user.uid = auth["id"]
    # user.token = token
    # user.save



#   end
# end

