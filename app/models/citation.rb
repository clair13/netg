class Citation < ApplicationRecord
  validates :title, length: { maximum: 500 }
end
