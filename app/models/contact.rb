class Contact < ActiveRecord::Base
  validates :company, :name, presence: true

  belongs_to :company
end
