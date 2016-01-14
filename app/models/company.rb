class Company < ActiveRecord::Base
  validates :name, :registry_number, presence: true

  has_many :contacts
  has_many :memberships
  has_many :phones
  has_many :companies_services
  has_many :services, through: :companies_services
  has_many :users

  has_ancestry

  scope :by_user, -> (user) { where(id: user.company.try(:descendant_ids)) }
  scope :accounting, -> { where(ancestry: nil) }
end
