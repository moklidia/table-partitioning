class Purchase < ApplicationRecord
  # self.table_name = 'purchases_view'

  belongs_to :user
end
