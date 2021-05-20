class Connection < ApplicationRecord
  belongs_to :car
  belongs_to :driver

  accepts_nested_attributes_for :driver
  accepts_nested_attributes_for :car
end
