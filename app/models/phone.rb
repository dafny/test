class Phone < ActiveRecord::Base
  validates :company, :ddd, :number, presence: true

  belongs_to :company
end
