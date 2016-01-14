class Service < ActiveRecord::Base
  validates :name, presence: true

  has_many :companies_services
  has_many :companies, through: :companies_services
end
