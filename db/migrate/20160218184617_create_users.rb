class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, index: true
      t.string :avatar
      t.string :password_digest
      t.string :authentication_token, index: true

      t.timestamps null: false
    end
  end
end
