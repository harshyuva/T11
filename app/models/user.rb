class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy

  #with_options if: :is_admin? do |admin|
   # admin.validates :password, length: { minimum: 10 }
   # admin.validates :email, presence: true
 #validates :email,
 # format: { with: /^(.+)@(.+)$/, message: "Email invalid"  },
      #     uniqueness: { case_sensitive: false },
        #    length: { minimum: 4, maximum: 254 }
  
end
