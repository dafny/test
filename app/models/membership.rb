class Membership < ActiveRecord::Base
  validates :amount, :expires_on, presence: true

  belongs_to :company
end
