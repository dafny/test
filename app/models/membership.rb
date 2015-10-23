class Membership < ActiveRecord::Base
  validate :amount, :expires_on, presence: true

  belongs_to :company
end
