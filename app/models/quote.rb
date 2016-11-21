class Quote < ApplicationRecord
  belongs_to :practitioner, class_name: 'User'
  belongs_to :listing
end
