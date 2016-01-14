class CompaniesService < ActiveRecord::Base
  validates :company, :services, :expected_send_date, presence: true
  belongs_to :company
  belongs_to :service
end
