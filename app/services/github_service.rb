class GithubService

  def self.auth
    "?client_id=#{ENV['GITHUB_KEY']}&client_secret=#{ENV['GITHUB_SECRET']}"
  end

  def self.find_followers

  end

  def self.find_following

  end

  def self.find_starred_repos

  end

  def self.find_repos(username)
    GithubService.parse(Faraday.get("https://api.github.com/users/#{username}/repos#{GithubService.auth}"))
  end

  def self.find_organizations

  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names:true)
  end
end

