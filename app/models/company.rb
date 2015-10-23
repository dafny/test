class Company < ActiveRecord::Base
  validate :name, :registru_number, presence: true

  has_many :contacts
  has_many :membershps
end
