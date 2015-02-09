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