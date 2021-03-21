class UserInfo < ApplicationRecord
  def self.bmi(weight,height)
    return weight / (height/100.to_f)**2
  end

end
