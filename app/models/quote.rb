class Quote < ApplicationRecord
  belongs_to :practitioner
  belongs_to :listing
end
