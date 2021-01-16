class CoCycleResp < ApplicationRecord
  belongs_to :company
  belongs_to :cycle
  belongs_to :responsibility
end
