# == Schema Information
#
# Table name: houses
#
#  id           :integer     primary key
#  address      :string
#  created_at   :datetime
#  updated_at   :datetime

class House < ActiveRecord::Base
  validates :address, presence: true
end
