class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :wechat_id
      t.string :gender
      t.string :phone
      t.string :city
      t.string :avatar

      t.timestamps
    end
  end
end
