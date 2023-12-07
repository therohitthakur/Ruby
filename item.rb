# app/models/item.rb
class Item < ApplicationRecord
  # Soft delete method
  def soft_delete
    update(deleted_at: Time.current)
  end

  # Restore method
  def restore
    update(deleted_at: nil)
  end
end
