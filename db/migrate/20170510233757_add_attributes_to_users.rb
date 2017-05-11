class AddAttributesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile_pic, :string
    add_column :users, :starred_repos, :string
    add_column :users, :followers, :string
    add_column :users, :following, :string
    remove_column :users, :oauth_token_secret
  end
end
