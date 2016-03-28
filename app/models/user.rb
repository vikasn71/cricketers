class User < ActiveRecord::Base
 validates :username, length: {in: 8..12}
 validates :username, :phone, presence: true
 validates :phone, format: {with: /\d{3}-\d{3}-\d{4}/,
 message: "invalid"}
 validates :email, :username, uniqueness: true 
 validates :email, format: { with: /(.+)@(.+)/,
 message: "invalid"}
 
 after_validation :name_from_email
 
 def name_from_email
   self.name = self.email.sub(/\@.+/, "")
 end
end
