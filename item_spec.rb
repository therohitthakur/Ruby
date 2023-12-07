# spec/models/item_spec.rb
require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { create(:item) } # Use FactoryBot for creating items

  it 'soft deletes an item' do
    item.soft_delete
    expect(item.deleted_at).not_to be_nil
  end

  it 'restores a soft-deleted item' do
    item.soft_delete
    item.restore
    expect(item.deleted_at).to be_nil
  end

  it 'excludes soft-deleted items from normal queries' do
    item.soft_delete
    expect(Item.all).not_to include(item)
  end
end
