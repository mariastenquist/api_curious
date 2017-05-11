class User < ApplicationRecord

  def self.from_omniauth(auth)
    user = find_or_create_by(uid: auth[:uid])
    user.update_attributes( oauth_token: auth.credentials.token,
                            name: auth.info.name,
                            profile_pic: auth.extra.raw_info.avatar_url )
    user
  end
end



    # binding.pry
    # new_user = User.find_or_create_by(uid: auth["id"], provider: 'github')
    # new_user.name = auth["login"]
    # new_user.oauth_token = token
    # new_user.profile_pic = auth["avatar_url"]
    # new_user.save

        # user.uid                = auth.uid
    # user.name               = auth.info.name
    # user.oauth_token        = auth.credentials.token
    # user.profile_pic        = auth.avatar_url
    # end
    # return user
