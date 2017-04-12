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

  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Person
end
