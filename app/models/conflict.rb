class Conflict < ApplicationRecord
  belongs_to :company
  belongs_to :cycle
  belongs_to :responsibility
  belongs_to :control
end
