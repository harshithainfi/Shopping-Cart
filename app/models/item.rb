class Item < ApplicationRecord
	belongs_to :user, optional: true
	has_many :item_categories
	has_many :categories, through: :item_categories
	belongs_to :stock, optional: true
	accepts_nested_attributes_for :stock
	validates :itemname, presence: true
	validates :desc, presence: true
	
end
