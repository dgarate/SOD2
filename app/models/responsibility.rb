class Responsibility < ApplicationRecord
    has_many :co_cycle_resps, dependent: :destroy
    has_many :companies, through: :co_cycle_resps
    has_many :cycles, through: :co_cycle_resps
    has_many :conflicts
    has_many :controls, through: :conflicts
end
