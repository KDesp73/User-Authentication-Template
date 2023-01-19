# email:string
# password_digest:string
#
# password:string virtual from has_secure_password
# password_confirmation:string virtual from has_secure_password

class User < ApplicationRecord
    has_secure_password

    #checks if an email is given
    validates :email, presence: true, format: {with: /\A[^@\s]+@[@\s]+\z/, message: "must be a valid email address"}
end
