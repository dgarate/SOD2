class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :co_user_role_cycles, dependent: :destroy
    has_many :companies, through: :co_user_role_cycles
    has_many :cycles, through: :co_user_role_cycles
    has_many :roles, through: :co_user_role_cycles

    
    validates :name, presence: true
    validates :email, presence: true
end
