class Cycle < ApplicationRecord
    has_many :co_user_role_cycles
    has_many :users, through: :co_user_role_cycles
    has_many :co_cycle_resps
    has_many :responsibilites, through: :co_cycle_resps
    has_many :conflicts
    has_many :controls, through: :conflicts
end
