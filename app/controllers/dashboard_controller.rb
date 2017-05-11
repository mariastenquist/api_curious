class DashboardController < ApplicationController
  
  def index
    @username = current_user.name
    @access_token = current_user.oauth_token
    @conn = Faraday.get("https://api.github.com/?access_token=#{@access_token}")
    @github_user = GithubService.new(current_user)
  end

end