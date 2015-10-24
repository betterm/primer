class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  default_scope -> { order('created_at DESC') }
  validates :msg,presence: true, length: { maximum: 300 }
  validates :user_id, presence: true
  validates :product_id, presence: true
end
