# frozen_string_literal: true

class Watchlist < ActiveRecord::Base
  belongs_to :user
  has_many :products
  validates_uniqueness_of :product_id, message: 'Already watching this...'
end
