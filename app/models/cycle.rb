class Cycle < ApplicationRecord
    has_many :co_user_role_cycles
    has_many :users, through: :co_user_role_cycles
end
