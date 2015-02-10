class User < ActiveRecord::Base

    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first || create_from_omniauth(auth)        
    end

    def self.create_from_omniauth(auth)
        create! do |user|
            user.provider = auth["provider"]
            user.uid = auth["uid"]
            user.first_name = auth["info"]["first_name"]
            user.last_name = auth["info"]["last_name"]
            user.email = auth["info"]["email"]
            user.image = auth["info"]["image"]
            user.token = auth[:credentials][:token]
        end
    end

    def full_name
        "#{first_name} #{last_name}"
    end
    
end




# class User < ActiveRecord::Base

#     def self.from_omniauth(auth)
#         where(provider: auth.provider, uid: auth.uid).first || create_from_omniauth(auth)
#     end

#     def self.create_from_omniauth(auth)
#         create! do |user|
#             user.provider = auth["provider"]
#             user.uid = auth["uid"]
#             user.name = auth["info"]["nickname"]
#         end
#     end

# end
#     



# $ python oauth2.py --generate_oauth2_token --client_id=458523020971-7gage9nokkbddatdtn7crsdauovsi7bc.apps.googleusercontent.com --client_secret=HzCGBsgt72E6wI9zdXP4q6oh
