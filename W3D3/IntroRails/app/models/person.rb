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

  belongs_to :house,
    class_name: :House,
    primary_key: :id,
    foreign_key: :house_id
end
