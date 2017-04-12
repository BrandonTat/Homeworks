 # == Schema Information
 #
 # Table name: people
 #
 #  id           :integer     primary key
 #  name         :string
 #  house_id     :integer
 #  created_at   :datetime
 #  updated_at   :datetime


class Person < ActiveRecord::Base
  validates :name, :house_id, presence: true
end
