# == Schema Information
#
# Table name: distributions
#
#  id              :integer          not null, primary key
#  comment         :text
#  created_at      :datetime
#  updated_at      :datetime
#  inventory_id    :integer
#  partner_id      :integer
#  organization_id :integer
#

class Distribution < ApplicationRecord

  # Distributions are issued from a single inventory, so we associate them so that
  # on-hand amounts can be verified
  belongs_to :inventory

  # Distributions are issued to a single partner
  belongs_to :partner
  belongs_to :organization

  # Distributions contain many different items
  has_many :line_items, as: :itemizable, inverse_of: :itemizable
  has_many :items, through: :line_items
  accepts_nested_attributes_for :line_items,
    allow_destroy: true

  validates :inventory, :partner, :organization, presence: true
  validates_associated :line_items
  validate :line_item_items_exist_in_inventory

  def quantities_by_category
    line_items.includes(:item).group("items.category").sum(:quantity)
  end

  def sorted_line_items
    line_items.includes(:item).order("items.name")
  end

  def total_quantity
    line_items.sum(:quantity)
  end

  private



  def line_item_items_exist_in_inventory
    self.line_items.each do |line_item|
      next unless line_item.item
      inventory_item = self.inventory.inventory_items.find_by(item: line_item.item)
      if inventory_item.nil?
        errors.add(:inventory,
                   "#{line_item.item.name} is not available " \
                   "at this storage location")
      end
    end
  end
end
