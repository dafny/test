class Contact < ActiveRecord::Base
  validate :company, :name, presence: true

  belongs_to :company
end
