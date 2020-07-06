class List < ApplicationRecord
  has_many :item_lists, dependent: :delete_all
end
