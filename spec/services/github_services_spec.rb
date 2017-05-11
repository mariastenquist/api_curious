require 'rails_helper'


describe GithubService do 
  attr_reader :service

  before(:each) do 
    @service = GithubService.new
  end

  describe ".repositories" do
    it 'is able to grab user repos' do
      VCR.use_cassette('/services/repositories') do 
        repos = GithubService.find_repos('mariastenquist')
        first_repo = repos[1]

        expect(first_repo).to have_key(:name)
        expect(first_repo).to have_key(:html_url)
        expect(repos.count).to eq(30)
      end
    end
  end
end