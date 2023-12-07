# app/models/item.rb
class Item < ApplicationRecord
  default_scope { where(deleted_at: nil) }
end
