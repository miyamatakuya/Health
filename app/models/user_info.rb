class UserInfo < ApplicationRecord
  belongs_to :user
  validates :height, presence: true
  validates :weight, presence: true
  validates :BMI, presence: true
  def self.bmi(weight,height)
    return weight / (height/100.to_f)**2
  end

end
