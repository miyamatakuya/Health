class CreateUserInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_infos do |t|
      t.integer :morning_weight
      t.integer :night_weight
      t.integer :height
      t.integer :BMI
      t.date :date
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
