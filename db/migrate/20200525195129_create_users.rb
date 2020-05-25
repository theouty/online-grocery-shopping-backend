class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :address
      t.string :password_digest
      t.float :wallet
      t.string :color
      t.string :email

      t.timestamps
    end
  end
end
