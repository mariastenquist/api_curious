class DashboardController < ApplicationController
  def index
    @github_user = GithubService.new(current_user)
  end

end