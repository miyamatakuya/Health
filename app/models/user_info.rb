class UserInfo < ApplicationRecord
  def bmi
    weight / height ** 2
  end

end
