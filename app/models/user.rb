class User < ApplicationRecord

  def self.from_omniauth(auth_info, token)
    # binding.pry
    new_user = User.find_or_create_by(uid: auth_info["id"])
    new_user.name = auth_info["login"]
    new_user.oauth_token = token
    new_user.save
  # where(uid: auth_info[:uid]).first_or_create do |new_user|
  #     new_user.uid                = auth_info.uid
  #     new_user.name               = auth_info.extra.raw_info.name
  #     new_user.oauth_token        = auth_info.token
  #     new_user.oauth_token_secret = auth_info.secret
  return new_user
  end
end
