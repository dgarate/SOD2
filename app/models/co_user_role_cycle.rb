class CoUserRoleCycle < ApplicationRecord
  belongs_to :company
  belongs_to :user
  belongs_to :role
  belongs_to :cycle
end
