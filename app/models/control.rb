class Control < ApplicationRecord
    has_many :conflicts, dependent: :destroy
    has_many :companies, through: :conflicts
    has_many :cycles, through: :conflicts
    has_many :responsibilities, through: :conflicts
end
