class Service < ActiveRecord::Base
  validate :name, presence: true
end
