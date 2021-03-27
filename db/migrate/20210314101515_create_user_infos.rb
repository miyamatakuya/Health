class CreateUserInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_infos do |t|
      t.integer :weight
      t.integer :height
      t.integer :BMI
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
